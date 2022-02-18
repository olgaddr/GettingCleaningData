# Getting Data
#read data to working directory
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",temp)
file_ls <-unzip(temp)

#read activity labels
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

#read features names
features_names <- read.table("UCI HAR Dataset/features.txt")

#read features data files

features_test  <- read.table("UCI HAR Dataset/test/X_test.txt")
features_train <- read.table("UCI HAR Dataset/train/X_train.txt")

#read activity data files 

activity_test <- read.table("UCI HAR Dataset/test/Y_test.txt")
activity_train <- read.table("UCI HAR Dataset/train/Y_train.txt")

#read subjects data 

subject_test  <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")


# 1. Merge the training and the test sets to create one data set

# Combaining the training and the test sets by rows
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


