
# Getting and Cleaning Data Course Project
The goal of this project is to prepare tidy data that can be used for later analysis. 

This project uses data from the UCI Machine Learning Repository website http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The data about six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) of 30 volunteers wearing a smartphone (Samsung Galaxy S II) on the waist were collected from the accelerometers.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': shows information about the variables used on the feature vector.

- 'features.txt': 561 rows, 2 columns - list of all features' names.

- 'activity_labels.txt': 6 rows, 2 columns - the class labels with their activity names (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

- 'train/X_train.txt':  7352 rows, 561 columns - training set.

- 'train/y_train.txt': 7352 rows, 1 columns - training labels.

- 'test/X_test.txt': 2947 rows, 561 columns - test set.

- 'test/y_test.txt': 2947 rows, 1 columns - test labels.

- 'train/subject_train.txt', 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

This code book explains all the variables and summaries calculated in this project. The tidy dataset was obtained in the following steps:
1. Merging the training and the test sets to create one data set.
2. Extracing only the measurements on the mean and standard deviation for each measurement. 
3. Uing descriptive activity names to name the activities in the data set.
4. Appropriately labeling the dataset with descriptive variable names. 


Variables in the final dataset:
===============================

## Identififiers
subject: the ID of the Subject
activity: the Name of the Activity performed by the subject when measurements were taken

## Measurements
As mentioned above,the variables remaining are just the calculatd means and standard deviations of these sets of data: (Even if I do not give a detailed description of what each data value means, you can see what it means by comparing it with the original data column.)

tBodyAccMeanX
tBodyAccMeanY
tBodyAccMeanZ
tBodyAccStdX
tBodyAccStdY
tBodyAccStdZ
tGravityAccMeanX
tGravityAccMeanY
tGravityAccMeanZ
tGravityAccStdX
tGravityAccStdY
tGravityAccStdZ
tBodyAccJerkMeanX
tBodyAccJerkMeanY
tBodyAccJerkMeanZ
tBodyAccJerkStdX
tBodyAccJerkStdY
tBodyAccJerkStdZ
tBodyGyroMeanX
tBodyGyroMeanY
tBodyGyroMeanZ
tBodyGyroStdX
tBodyGyroStdY
tBodyGyroStdZ
tBodyGyroJerkMeanX
tBodyGyroJerkMeanY
tBodyGyroJerkMeanZ
tBodyGyroJerkStdX
tBodyGyroJerkStdY
tBodyGyroJerkStdZ
tBodyAccMagMean
tBodyAccMagStd
tGravityAccMagMean
tGravityAccMagStd
tBodyAccJerkMagMean
tBodyAccJerkMagStd
tBodyGyroMagMean
tBodyGyroMagStd
tBodyGyroJerkMagMean
tBodyGyroJerkMagStd
fBodyAccMeanX
fBodyAccMeanY
fBodyAccMeanZ
fBodyAccStdX
fBodyAccStdY
fBodyAccStdZ
fBodyAccMeanFreqX
fBodyAccMeanFreqY
fBodyAccMeanFreqZ
fBodyAccJerkMeanX
fBodyAccJerkMeanY
fBodyAccJerkMeanZ
fBodyAccJerkStdX
fBodyAccJerkStdY
fBodyAccJerkStdZ
fBodyAccJerkMeanFreqX
fBodyAccJerkMeanFreqY
fBodyAccJerkMeanFreqZ
fBodyGyroMeanX
fBodyGyroMeanY
fBodyGyroMeanZ
fBodyGyroStdX
fBodyGyroStdY
fBodyGyroStdZ
fBodyGyroMeanFreqX
fBodyGyroMeanFreqY
fBodyGyroMeanFreqZ
fBodyAccMagMean
fBodyAccMagStd
fBodyAccMagMeanFreq
fBodyBodyAccJerkMagMean
fBodyBodyAccJerkMagStd
fBodyBodyAccJerkMagMeanFreq
fBodyBodyGyroMagMean
fBodyBodyGyroMagStd
fBodyBodyGyroMagMeanFreq
fBodyBodyGyroJerkMagMean
fBodyBodyGyroJerkMagStd
fBodyBodyGyroJerkMagMeanFreq
