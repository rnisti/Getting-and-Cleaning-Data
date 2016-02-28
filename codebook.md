##Getting and Cleaning Data Course Project

This data from Human Activity Recognition Using Smartphones Data Set (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
The source data is https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

It's about experiments with 30 volunteers within an age bracket of 19-48 years. Wearing a smartphone using its embedded accelerometer and gyroscope was captured 3-axial linear acceleration and 3-axial angular velocity.
We have 76-feature vector with mean and standard deviation of time and frequency measurement.


###cleaner_data.r
cleaner_data.r read, clear and analisy data from experiments above.
*We merge both data: test and train
*We identified all activity records with label name for each activity
*We clean data, just take mean and standard deviation from all measures
*We cleaned invalid character from column names.

###Alldata
alldata is result from the script has all measurement from subject(volunteer) and activity.
Activities are: 
	*WALKING, 
	*WALKING_UPSTAIRS, 
	*WALKING_DOWNSTAIRS, 
	*SITTING, 
	*STANDING,
	*LAYING.

###Alldata.mean
alldata.mean is a avarage from alldata grouping by subject and activity



Measures are:
*tBodyAcc-mean()-Y
*tBodyAcc-mean()-Z
*tBodyAcc-mean()-X
*tBodyAcc-std()-X
*tBodyAcc-std()-Y
*tBodyAcc-std()-Z
*tGravityAcc-mean()-X
*tGravityAcc-mean()-Y
*tGravityAcc-mean()-Z
*tGravityAcc-std()-X
*tGravityAcc-std()-Y
*tGravityAcc-std()-Z
*tBodyAccJerk-mean()-X
*tBodyAccJerk-mean()-Y
*tBodyAccJerk-mean()-Z
*tBodyAccJerk-std()-X
*tBodyAccJerk-std()-Y
*tBodyAccJerk-std()-Z
*tBodyGyro-mean()-X
*tBodyGyro-mean()-Y
*tBodyGyro-mean()-Z
*tBodyGyro-std()-X
*tBodyGyro-std()-Y
*tBodyGyro-std()-Z
*tBodyGyroJerk-mean()-X
*tBodyGyroJerk-mean()-Y
*tBodyGyroJerk-mean()-Z
*tBodyGyroJerk-std()-X
*tBodyGyroJerk-std()-Y
*tBodyGyroJerk-std()-Z
*tBodyAccMag-mean()
*tBodyAccMag-std()
*tBodyAccJerkMag-mean()
*tBodyAccJerkMag-std()
*tBodyGyroMag-mean()
*tBodyGyroMag-std()
*tBodyGyroJerkMag-mean()
*tBodyGyroJerkMag-std()
*fBodyAcc-mean()-X
*fBodyAcc-mean()-Y
*fBodyAcc-mean()-Z
*fBodyAcc-std()-X
*fBodyAcc-std()-Y
*fBodyAcc-std()-Z
*fBodyAcc-meanFreq()-X
*fBodyAcc-meanFreq()-Y
*fBodyAcc-meanFreq()-Z
*fBodyAccJerk-mean()-X
*fBodyAccJerk-mean()-Y
*fBodyAccJerk-mean()-Z
*fBodyAccJerk-std()-X
*fBodyAccJerk-std()-Y
*fBodyAccJerk-std()-Z
*fBodyAccJerk-meanFreq()-X
*fBodyAccJerk-meanFreq()-Y
*fBodyAccJerk-meanFreq()-Z
*fBodyGyro-mean()-X
*fBodyGyro-mean()-Y
*fBodyGyro-mean()-Z
*fBodyGyro-std()-X
*fBodyGyro-std()-Y
*fBodyGyro-std()-Z
*fBodyGyro-meanFreq()-X
*fBodyGyro-meanFreq()-Y
*fBodyGyro-meanFreq()-Z
*fBodyAccMag-mean()
*fBodyAccMag-std()
*fBodyAccMag-meanFreq()
*fBodyBodyAccJerkMag-mean()
*fBodyBodyAccJerkMag-std()
*fBodyBodyAccJerkMag-meanFreq()
*fBodyBodyGyroMag-mean()
*fBodyBodyGyroMag-std()
*fBodyBodyGyroMag-meanFreq()
*fBodyBodyGyroJerkMag-mean()
*fBodyBodyGyroJerkMag-std()
*fBodyBodyGyroJerkMag-meanFreq()
