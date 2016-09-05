library(plyr)

#local path to the dataset
localPath <- "~/Downloads/week4-data/UCI HAR Dataset/"

read.myfile <- function(relativePath, colClasses = NA, colNames = NA, columns = NA, ...) {
  df <- read.delim(paste(localPath, relativePath, sep=""), sep = "" , header = FALSE , na.strings ="", stringsAsFactors= FALSE, colClasses = colClasses, ...)
  if(!is.na(colNames)) {
    colnames(df) <- colNames
  }
  
  if(!is.na(columns)) {
    df <- df[,columns]
  } 
  
  df
}

activity_labels <-  read.myfile("activity_labels.txt")
features <- read.myfile("features.txt", row.names = 1, colNames = c("FeatureName"))
subject_test <- read.myfile("test/subject_test.txt", colNames = c("Subject"))
subject_train <- read.myfile("train/subject_train.txt", colNames = c("Subject"))
y_train <- read.myfile("train/y_train.txt")
y_test <- read.myfile("test/y_test.txt")


##4 Appropriately labels the data set with descriptive variable names.
prettyXColumnNames <- gsub("\\(\\)", "", features$FeatureName)

##2 Extracts only the measurements on the mean and standard deviation for each measurement
requiredFeatures <- aa<- grep(".*(mean|std).*", features$FeatureName)

X_train <- read.myfile("train/X_train.txt", colClasses=c(rep("numeric",561)), colNames = prettyXColumnNames, columns = requiredFeatures)
X_test <- read.myfile("test/X_test.txt", colClasses=c(rep("numeric",561)), colNames = prettyXColumnNames, columns = requiredFeatures)

##3 Uses descriptive activity names to name the activities in the data set
y_train[,1] <- as.factor(y_train[, 1]) 
y_test[,1] <- as.factor(y_test[, 1]) 
levels(y_train$V1) <- activity_labels[[2]]
levels(y_test$V1) <- activity_labels[[2]]


#now that we have smaller/tidier data sets we can start merge the columns
X_train$Subject <- subject_train$Subject
X_train$Activity <- y_train[[1]]
X_test$Subject <- subject_test$Subject
X_test$Activity <- y_test[[1]]

##1 Merges the training and the test sets to create one data set.
mergedDf <- rbind(X_train, X_test)


##5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
df <- ddply(mergedDf, .(Activity, Subject), numcolwise(mean))


##write to file
write.csv(df,file="~/Downloads/week4-data/output/analysis.csv")
