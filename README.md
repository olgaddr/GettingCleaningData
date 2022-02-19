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
