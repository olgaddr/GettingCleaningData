# Getting and Cleaning Data Course Project
The goal of this project is to prepare tidy data that can be used for later analysis. 

This project uses data from the UCI Machine Learning Repository website http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The data about six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) of 30 volunteers wearing a smartphone (Samsung Galaxy S II) on the waist were collected from the accelerometers.

The tidy dataset was obtained in the following steps:

1. Merging the training and the test sets to create one data set.
2. Extracing only the measurements on the mean and standard deviation for each measurement.
3. Uing descriptive activity names to name the activities in the data set.
4. Appropriately labeling the dataset with descriptive variable names.

## Repository Information
This repository contains the following project files:

* CodeBook.md -  describes the variables, the data, transformations performed to tidy the data and calculated summaries calculated.

* run_analysis.R - contains R script for performing the analysis and tidy the data.

* tidy.txt - contains the final tidy data set, hat is the output from the run_analysis.R script.  

The R script run_analysis.R performs the following steps to produce the final tidy data set required in the course project:
* Getting Data

download data from the link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, unzip and read data to the  working directory

1. Merge the training and the test sets to create one data set

Combines the training and the test sets by rows
features <- rbind(features_train, features_test)
activity <- rbind(activity_train, activity_test)
subject <- rbind(subject_train, subject_test)


# Set variables names
names(features) <-features_names[,2] 
names(activity)<- c("activity")
names(subject)<-c("subject")

# Merge datasets
merged_data <- cbind(subject, activity, features)

# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
library(dplyr)
sub_data <- select(merged_data,subject,activity,contains("mean()"), contains("std()"))

# 3. Use descriptive activity names to name the activities in the data set
sub_data$activity<- factor(sub_data$activity,labels=activity_labels[,2])

# 4. Appropriately label the data set with descriptive variable names.

#check names
names(sub_data)
# Replace first "-" with "_", remove "()" and remove second "-"
names(sub_data)%<>%sub("-","_",.)%>%gsub("\\(\\)","",.)%>%gsub("-","",.)
names(sub_data)
# Replace "t" with "Time", "f"  with "Frequency"

# "Acc" with "Accelerometer", "Gyro" with "Gyroscope"

# "Mag" with "Magnitude", "BodyBody" with "Body"

names(sub_data)%<>%gsub("^t","Time",.)%>%gsub("^f","Frequency",.)%>%
    gsub("Acc","Accelerometer",.)%>%gsub("Gyro","Gyroscope",.)%>%
    gsub("Mag","Magnitude",.)%>%gsub("BodyBody","Body",.)
names(sub_data)

# 5. From the data set in step 4, creates a second, 
# independent tidy data set with the average of each variable for each activity
# and each subject.

tidy_data <- sub_data %>%
    group_by(subject, activity) %>%
    summarise_all(list(Mean = mean))

#write tidy data to text file
write.table(tidy_data, "tidy_data.txt", row.name=FALSE)
