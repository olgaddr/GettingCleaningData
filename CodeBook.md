
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
* subject: the ID of the subject who performed the activity
* activity: the name of the activity performed by the subject when measurements were taken

## Measurements
Only the measurements on the mean and standard deviation for each measurement were extracte from the initial data sets. The average of each variable for each activity and each subject of data were calculated. Variable names describe the variables, measurements and summaries calculated, along with units.

 * TimeBodyAccelerometer_meanX_Mean                 
 * TimeBodyAccelerometer_meanY_Mean                 
 * TimeBodyAccelerometer_meanZ_Mean                 
 * TimeGravityAccelerometer_meanX_Mean              
 * TimeGravityAccelerometer_meanY_Mean              
 * TimeGravityAccelerometer_meanZ_Mean              
 * TimeBodyAccelerometerJerk_meanX_Mean             
 * TimeBodyAccelerometerJerk_meanY_Mean             
 * TimeBodyAccelerometerJerk_meanZ_Mean             
 * TimeBodyGyroscope_meanX_Mean                     
 * TimeBodyGyroscope_meanY_Mean                     
 * TimeBodyGyroscope_meanZ_Mean                     
 * TimeBodyGyroscopeJerk_meanX_Mean                 
 * TimeBodyGyroscopeJerk_meanY_Mean                 
 * TimeBodyGyroscopeJerk_meanZ_Mean                 
 * TimeBodyAccelerometerMagnitude_mean_Mean         
 * TimeGravityAccelerometerMagnitude_mean_Mean      
 * TimeBodyAccelerometerJerkMagnitude_mean_Mean     
 * TimeBodyGyroscopeMagnitude_mean_Mean             
 * TimeBodyGyroscopeJerkMagnitude_mean_Mean         
 * FrequencyBodyAccelerometer_meanX_Mean            
 * FrequencyBodyAccelerometer_meanY_Mean           
 * FrequencyBodyAccelerometer_meanZ_Mean            
 * FrequencyBodyAccelerometerJerk_meanX_Mean        
 * FrequencyBodyAccelerometerJerk_meanY_Mean        
 * FrequencyBodyAccelerometerJerk_meanZ_Mean        
 * FrequencyBodyGyroscope_meanX_Mean                
 * FrequencyBodyGyroscope_meanY_Mean                
 * FrequencyBodyGyroscope_meanZ_Mean                
 * FrequencyBodyAccelerometerMagnitude_mean_Mean    
 * FrequencyBodyAccelerometerJerkMagnitude_mean_Mean
 * FrequencyBodyGyroscopeMagnitude_mean_Mean        
 * FrequencyBodyGyroscopeJerkMagnitude_mean_Mean    
 * TimeBodyAccelerometer_stdX_Mean                  
 * TimeBodyAccelerometer_stdY_Mean                  
 * TimeBodyAccelerometer_stdZ_Mean                  
 * TimeGravityAccelerometer_stdX_Mean               
 * TimeGravityAccelerometer_stdY_Mean               
 * TimeGravityAccelerometer_stdZ_Mean               
 * TimeBodyAccelerometerJerk_stdX_Mean              
 * TimeBodyAccelerometerJerk_stdY_Mean              
 * TimeBodyAccelerometerJerk_stdZ_Mean              
 * TimeBodyGyroscope_stdX_Mean                      
 * TimeBodyGyroscope_stdY_Mean                      
 * TimeBodyGyroscope_stdZ_Mean                      
 * TimeBodyGyroscopeJerk_stdX_Mean                  
 * TimeBodyGyroscopeJerk_stdY_Mean                  
 * TimeBodyGyroscopeJerk_stdZ_Mean                  
 * TimeBodyAccelerometerMagnitude_std_Mean          
 * TimeGravityAccelerometerMagnitude_std_Mean
 * TimeBodyAccelerometerJerkMagnitude_std_Mean       
 * TimeBodyGyroscopeMagnitude_std_Mean              
 * TimeBodyGyroscopeJerkMagnitude_std_Mean          
 * FrequencyBodyAccelerometer_stdX_Mean             
 * FrequencyBodyAccelerometer_stdY_Mean             
 * FrequencyBodyAccelerometer_stdZ_Mean             
 * FrequencyBodyAccelerometerJerk_stdX_Mean         
 * FrequencyBodyAccelerometerJerk_stdY_Mean         
 * FrequencyBodyAccelerometerJerk_stdZ_Mean         
 * FrequencyBodyGyroscope_stdX_Mean                 
 * FrequencyBodyGyroscope_stdY_Mean                 
 * FrequencyBodyGyroscope_stdZ_Mean                 
 * FrequencyBodyAccelerometerMagnitude_std_Mean     
 * FrequencyBodyAccelerometerJerkMagnitude_std_Mean 
 * FrequencyBodyGyroscopeMagnitude_std_Mean         
 * FrequencyBodyGyroscopeJerkMagnitude_std_Mean
