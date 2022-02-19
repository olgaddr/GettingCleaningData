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

* CodeBook.md -  describes the variables, the data, and transformations or work that you performed to clean up the data and summaries calculated, along with units.

* run_analysis.R - This script is used to build up and perform the analysis on the required sample data.

* tidy.txt - This is the final output from the run_analysis.R script.  It contains a cleansed version of the sample data.

