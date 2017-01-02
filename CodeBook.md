Code Book
=========

This code book summarizes the resulting data fields in tidy.txt.

Identifiers
-----------

-   subject - The ID of the test subject
-   activity - The type of activity performed when the corresponding
    measurements were taken

Measurements
------------

The following table relates the 17 signals to the names used as prefix
for the variables names present in the data set. ".XYZ" denotes three
variables, one for each axis. These signals were used to estimate
variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
For variables derived from mean and standard deviation estimation, the
labels are augmented with the terms "Mean" or "Std".

tBodyAcc-XYZ tGravityAcc-XYZ tBodyAccJerk-XYZ tBodyGyro-XYZ
tBodyGyroJerk-XYZ tBodyAccMag tGravityAccMag tBodyAccJerkMag
tBodyGyroMag tBodyGyroJerkMag fBodyAcc-XYZ fBodyAccJerk-XYZ
fBodyGyro-XYZ fBodyAccMag fBodyAccJerkMag fBodyGyroMag fBodyGyroJerkMag

Activity Labels
---------------

-   WALKING (value 1): subject was walking during the test
-   WALKING\_UPSTAIRS (value 2): subject was walking up a staircase
    during the test
-   WALKING\_DOWNSTAIRS (value 3): subject was walking down a staircase
    during the test
-   SITTING (value 4): subject was sitting during the test
-   STANDING (value 5): subject was standing during the test
-   LAYING (value 6): subject was laying down during the test
