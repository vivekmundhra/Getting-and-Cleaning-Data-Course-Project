# Getting And Cleaning Data

## Purpose

The primary purpose of the run_analysis.R script if to do the following:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Prerequisite:

1. Data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, is downloaded and unzipped into a "localPath"
2. plyr library is installed


## Background:

The data comprises of two sets, tranining and test; contained in respective folders.
The vaious features for gyro and accelerometer data (X_train.txt/X_test.txt) for activities (y_test.txt/y_train.txt) for subjects (subject_train.txt/subject_test.txt) are recorded in seperate files. Meta information about activites and features are contained in activity_labels.txt and features.txt files.

Note: download of the dataset is not part of the script, as it is not part of the requirement.

STEPS:
=====
In roder to achieve the goal the script performs the following:
1. Read the activity_labels (will be later used to replace the Factor, to satisfy REQUIREMENT #4)
2. Read the feature names from features.txt.
   Remove "()" from the names, and make the feature names "pretty" (will be used for column names, to satisfy REQUIREMENT #4)
3. Read the X_train and X_test files, and extract the "standard deviation" and "mean" data for the various parameters only.
4. Read the y_train and y_test; and subject_test and subject_train data.
5. Add subject and activity columns to the X_train and X_test dataframes.
6. rbind the test and train datasets
7. Use the ddply to split the merged dataset, based on Subject and Activity; and apply the mean function 
8. Write to file
