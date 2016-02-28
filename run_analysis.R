#import dplyr library
library(dplyr)

#read labels for activity and create label for columns
labels_act <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)
colnames(labels_act) <- c("act_id","activity")

#read features to columnames
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
columnnames <- as.vector(features[,2])

#clean invalid character
columnnames <- gsub("\\(", "", columnnames)
columnnames <- gsub("\\)", "", columnnames)


#Preapare data from test

#load data from x_test and set names from features file
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
colnames(x_test) <- columnnames

#load data from y_test
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
colnames(y_test) <- c("act_id")

#read data from subject_test
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
colnames(subject_test) <- c("subject")

#associate each acitivity_id to label (activity name)
y_test <- merge(y_test, labels_act, by = "act_id", all = TRUE )
test <- cbind(subject_test, y_test, x_test)

#Prepare data from train

#load data from x_train and set names from features file
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
colnames(x_train) <- columnnames

#load data from y_train
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
colnames(y_train) <- c("act_id")

#read data from subject_train
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
colnames(subject_train) <- c("subject")

#associate each acitivity_id to label (activity name)
y_train <- merge(y_train, labels_act, by = "act_id", all = TRUE )
train <- cbind(subject_train, y_train, x_train)
x
#append train and test in a table
alldata <- rbind(train, test)

#select just identity columns(subject and activity) and means and std measures
alldata <- select(alldata, contains("subject"),contains("activity"), contains("std"), contains("mean"))

#create a average table for all columns
alldata.mean <- alldata %>% group_by(subject, activity) %>% summarise_each(funs(mean))
