# Resources

The data source used for this project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Instructions

1. Download the data set
2. Extract the files in your R working directory.
3. Set your working directory the folder named: UCI HAR Dataset
4. Load the script run_analysis.R
5. The tidy dataset will be created in the same directory.

# Script Functionality

1. First, it loads into variables the datasets contained in test and train folders. It creates one variable for each file.
2. Secondly, the script renames the column values with the features.txt file. It also assigns the Subject and Activity columns.
3. Thirly, the script concatenates the variables in one complete dataset.
4. It obtains the means and standard variation vectors and creates a new dataframes with these two measurements.
5. It creates the tidy dataset using the activity and subject column.
6. It writes the tidy txt file.

# Variables 

To Store the content of files:
x_train
x_test
y_train 
y_test
subject_train 
subject_test 
activities
features

Ton store the concatenation of data
test_data
train_data
feature_data
complete_data

To store Metrics:
means
sds
result 

To store Tidy data by subject + activity
tidy



# Features to calculate metrics

tBodyAccMeanX, tBodyAccMeanY, tBodyAccMeanZ, tBodyAccStdX, tBodyAccStdY, tBodyAccStdZ, tGravityAccMeanX, tGravityAccMeanY, tGravityAccMeanZ, tGravityAccStdX, tGravityAccStdY, tGravityAccStdZ, tBodyAccJerkMeanX, tBodyAccJerkMeanY, tBodyAccJerkMeanZ, tBodyAccJerkStdX, tBodyAccJerkStdY, tBodyAccJerkStdZ, tBodyGyroMeanX, tBodyGyroMeanY, tBodyGyroMeanZ, tBodyGyroStdX, tBodyGyroStdY, tBodyGyroStdZ, tBodyGyroJerkMeanX, tBodyGyroJerkMeanY, tBodyGyroJerkMeanZ, tBodyGyroJerkStdX, tBodyGyroJerkStdY, tBodyGyroJerkStdZ, tBodyAccMagMean, tBodyAccMagStd, tGravityAccMagMean, tGravityAccMagStd, tBodyAccJerkMagMean, tBodyAccJerkMagStd, tBodyGyroMagMean, tBodyGyroMagStd, tBodyGyroJerkMagMean, tBodyGyroJerkMagStd, fBodyAccMeanX, fBodyAccMeanY, fBodyAccMeanZ, fBodyAccStdX, fBodyAccStdY, fBodyAccStdZ, fBodyAccMeanFreqX, fBodyAccMeanFreqY, fBodyAccMeanFreqZ, fBodyAccJerkMeanX, fBodyAccJerkMeanY, fBodyAccJerkMeanZ, fBodyAccJerkStdX, fBodyAccJerkStdY, fBodyAccJerkStdZ, fBodyAccJerkMeanFreqX, fBodyAccJerkMeanFreqY, fBodyAccJerkMeanFreqZ, fBodyGyroMeanX, fBodyGyroMeanY, fBodyGyroMeanZ, fBodyGyroStdX, fBodyGyroStdY, fBodyGyroStdZ, fBodyGyroMeanFreqX, fBodyGyroMeanFreqY, fBodyGyroMeanFreqZ, fBodyAccMagMean, fBodyAccMagStd, fBodyAccMagMeanFreq, fBodyBodyAccJerkMagMean, fBodyBodyAccJerkMagStd, fBodyBodyAccJerkMagMeanFreq, fBodyBodyGyroMagMean, fBodyBodyGyroMagStd, fBodyBodyGyroMagMeanFreq, fBodyBodyGyroJerkMagMean, fBodyBodyGyroJerkMagStd, fBodyBodyGyroJerkMagMeanFreq

# Activity Labels

WALKING (value 1): subject was walking during the test
WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
SITTING (value 4): subject was sitting during the test
STANDING (value 5): subject was standing during the test
LAYING (value 6): subject was laying down during the test
