CodeBook
========================================================

The data in this dataset pertains to readings made by smartphone users' acceleromters while they participated in activities from laying down to walking up stairs.  The original data was contributed by:

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit<E0> degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

It is available here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Their data can also be downloaded from here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The purpose of this data transformation was to make the data more accessible and to extract from it mean value data across the acitivities and subjects profiled.  Please see the original contributors documentation for a complete description of the methods and recordings which produced the original data.  This data set was constructed from that data as follows:

First the zip file containing the original data was downloaded, unzipped, and examined.  There were 2 datasets, one training set comprised of 70% of the measurement data and another test set comprised of the remaining data.  This dataset combines them into a single dataset.

The original data had separate files to indicate the values within a given row of readings, the activity to which a given row vector of readings pertained, and the subject to which a give row vector's reading pertained.  This dataset provides code for constructing 2 datasets, both internally indexed with measurement type, subject and activity information: 1 with a subset of the original data (those data representing means and standard deviations of measurements), and the other representing the average across both subjects and activities of the mean and standard deviation measurements which appear in the first data set.  The second dataset is also available within this repository.  Below are descriptions for the row and column names appearing in these datasets:

in the dataset mean_and_stdev_measurements.txt:

subject_id : the id of the subject from whom the readings were taken, 1 to 30
activity : the subject's activity during the reading: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS

The following columns also appear and are described in detail in the README.txt and features_info.txt files with the original contributors work.  Here, the descriptions are quoted:



"        The features selected for this database come from the accelerometer and                                   gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation     "



Please note, this data only makes use of the calculated means and standard deviations of the measurements described above.  The columns available in this dataset are:

tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyAccMag-mean()
tGravityAccMag-mean()
tBodyGyro-mean()-Z
tBodyAccJerkMag-mean()
tBodyGyroMag-mean()
tBodyGyroJerkMag-mean()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-meanFreq()-X
fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-meanFreq()-X
fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-meanFreq()-X
fBodyGyro-meanFreq()-Y
fBodyGyro-meanFreq()-Z
fBodyAccMag-mean()
fBodyAccMag-meanFreq()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-meanFreq()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-meanFreq()
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-std()
tGravityAccMag-std()
tBodyAccJerkMag-std()
tBodyGyroMag-std()
tBodyGyroJerkMag-std()
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyAccMag-std()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-std()

Each row in this dataset represents a reading of all the measurements for a given subject during a specified activity.

The second dataset, available in the repo, called tidy_measurement_means_by_activity_and_subject.txt, represents the average of each included measurement (themselves all means or standard deviations) across all readings for each subject and each activity.  The columns for this dataset are:

Activity:LAYING
Activity:SITTING
Activity:STANDING
Activity:WALKING
Activity:WALKING_DOWNSTAIRS
Activity:WALKING_UPSTAIRS
Subject #1
Subject #2
Subject #3
Subject #4
Subject #5
Subject #6
Subject #7
Subject #8
Subject #9
Subject #10
Subject #11
Subject #12
Subject #13
Subject #14
Subject #15
Subject #16
Subject #17
Subject #18
Subject #19
Subject #20
Subject #21
Subject #22
Subject #23
Subject #24
Subject #25
Subject #26
Subject #27
Subject #28
Subject #29
Subject #30

Each corresponds to a single activity or subject from the other dataset's mean and standard deviation observations. The rows in this dataset each constitute the measure whose values are being averaged for each subject and each activity.

Further information about the measurements can be found through the original contributor's documentation.  Also, be take note of the following publication by the original contributors:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
