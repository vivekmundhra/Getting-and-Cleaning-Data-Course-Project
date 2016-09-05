# Code Book for Getting And Cleaning Data, Course Programming

## Introduction

The dataset includes the following files:

analysis.csv : is a tidy data set comprising of mean values of various features recorded (comprising of accelerator and gyro parameters) for "activities" of 30 subjects.  


## Data Preparation

### 1. Download and extract the dataset 

The raw data sets are downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### 2. Run script

Run run_analysis.R. See README for details of the script.


## Variable Names and codes

The dataset has the following columns:

"Activity"              : WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING              
"Subject"               : 1:30 subjects       
"tBodyAcc-mean-X"       : numeric        
"tBodyAcc-mean-Y"       : numeric       
"tBodyAcc-mean-Z"       : numeric        
"tBodyAcc-std-X"        : numeric        
"tBodyAcc-std-Y"        : numeric        
"tBodyAcc-std-Z"        : numeric       
"tGravityAcc-mean-X"    : numeric        
"tGravityAcc-mean-Y"    : numeric        
"tGravityAcc-mean-Z"    : numeric        
"tGravityAcc-std-X"     : numeric       
"tGravityAcc-std-Y"     : numeric        
"tGravityAcc-std-Z"     : numeric        
"tBodyAccJerk-mean-X"   : numeric        
"tBodyAccJerk-mean-Y"   : numeric       
"tBodyAccJerk-mean-Z"   : numeric        
"tBodyAccJerk-std-X"    : numeric        
"tBodyAccJerk-std-Y"    : numeric        
"tBodyAccJerk-std-Z"    : numeric       
"tBodyGyro-mean-X"      : numeric        
"tBodyGyro-mean-Y"      : numeric        
"tBodyGyro-mean-Z"      : numeric        
"tBodyGyro-std-X"       : numeric       
"tBodyGyro-std-Y"       : numeric        
"tBodyGyro-std-Z"       : numeric        
"tBodyGyroJerk-mean-X"  : numeric        
"tBodyGyroJerk-mean-Y"  : numeric       
"tBodyGyroJerk-mean-Z"  : numeric        
"tBodyGyroJerk-std-X"   : numeric        
"tBodyGyroJerk-std-Y"   : numeric        
"tBodyGyroJerk-std-Z"   : numeric       
"tBodyAccMag-mean"      : numeric        
"tBodyAccMag-std"       : numeric        
"tGravityAccMag-mean"   : numeric        
"tGravityAccMag-std"    : numeric       
"tBodyAccJerkMag-mean"  : numeric        
"tBodyAccJerkMag-std"   : numeric        
"tBodyGyroMag-mean"     : numeric        
"tBodyGyroMag-std"      : numeric       
"tBodyGyroJerkMag-mean" : numeric        
"tBodyGyroJerkMag-std"  : numeric        
"fBodyAcc-mean-X"       : numeric        
"fBodyAcc-mean-Y"       : numeric       
"fBodyAcc-mean-Z"       : numeric        
"fBodyAcc-std-X"        : numeric        
"fBodyAcc-std-Y"        : numeric        
"fBodyAcc-std-Z"        : numeric       
"fBodyAcc-meanFreq-X"   : numeric        
"fBodyAcc-meanFreq-Y"   : numeric        
"fBodyAcc-meanFreq-Z"   : numeric        
"fBodyAccJerk-mean-X"   : numeric       
"fBodyAccJerk-mean-Y"   : numeric       
"fBodyAccJerk-mean-Z"   : numeric        
"fBodyAccJerk-std-X"    : numeric        
"fBodyAccJerk-std-Y"    : numeric       
"fBodyAccJerk-std-Z"    : numeric        
"fBodyAccJerk-meanFreq-X" : numeric      
"fBodyAccJerk-meanFreq-Y" : numeric      
"fBodyAccJerk-meanFreq-Z" : numeric     
"fBodyGyro-mean-X"      : numeric        
"fBodyGyro-mean-Y"      : numeric        
"fBodyGyro-mean-Z"      : numeric        
"fBodyGyro-std-X"       : numeric       
"fBodyGyro-std-Y"       : numeric        
"fBodyGyro-std-Z"       : numeric        
"fBodyGyro-meanFreq-X"  : numeric        
"fBodyGyro-meanFreq-Y"  : numeric       
"fBodyGyro-meanFreq-Z"  : numeric        
"fBodyAccMag-mean"      : numeric        
"fBodyAccMag-std"       : numeric        
"fBodyAccMag-meanFreq"  : numeric       
"fBodyBodyAccJerkMag-mean"      : numeric     
"fBodyBodyAccJerkMag-std"       : numeric    
"fBodyBodyAccJerkMag-meanFreq"  : numeric
"fBodyBodyGyroMag-mean"         : numeric
"fBodyBodyGyroMag-std"          : numeric 
"fBodyBodyGyroMag-meanFreq"     : numeric
"fBodyBodyGyroJerkMag-mean"     : numeric
"fBodyBodyGyroJerkMag-std"      : numeric
"fBodyBodyGyroJerkMag-meanFreq" : numeric