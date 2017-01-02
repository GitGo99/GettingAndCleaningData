

  # Download and unzip the dataset

  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, destfile="./UCIHARDataset.zip", mode="wb")

  unzip("./UCIHARDataset.zip") 

  # Load activity labels and features
  activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
  features <- read.table("UCI HAR Dataset/features.txt")
  
  
  # Extract the data of mean and standard deviation only
  featuresSelected <- grep(".*mean.*|.*std.*", features[,2])
  featuresSelected.names <- features[featuresSelected,2]
  
  
  # Load the datasets
  train <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresSelected]
  trainActivity <- read.table("UCI HAR Dataset/train/Y_train.txt")
  trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
  train <- cbind(trainSubject, trainActivity, train)
  
  test <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresSelected]
  testActivity <- read.table("UCI HAR Dataset/test/Y_test.txt")
  testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
  test <- cbind(testSubject, testActivity, test)
  

  # merge datasets and add labels
  finalData <- rbind(train, test)
  colnames(finalData) <- c("subject", "activity", featuresSelected.names)
  
  # create tidy dataset
  finalData$activity <- factor(finalData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
  finalData$subject <- as.factor(finalData$subject)
  
  finalData.melted <- melt(finalData, id = c("subject", "activity"))
  finalData.mean <- dcast(finalData.melted, subject + activity ~ variable, mean)
  
  write.table(finalData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)