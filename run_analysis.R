# Getting and Cleaning Data Course Project

## Make sure that data file is unzipped in Working Dir 
## at UCI HAR Dataset/

#################################################################

### Step 0.
### Read necessary data.

x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

activities <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

#################################################################

### Step 1.
### Merges the training and the test sets to create one data set.

train <- cbind(x_train, y_train, subject_train)
test <- cbind(x_test, y_test, subject_test)
dataset <- rbind(train, test)

#################################################################

### Step 2.
### Extracts only the measurements on the mean and 
### standard deviation for each measurement.

measurements_index <- grep("-(mean|std)\\(\\)", features[, 2])
dataset <- dataset[, c(measurements_index, 562, 563)]

#################################################################

### Step 3.
### Uses descriptive activity names to name the activities in the data set.

dataset[, 67] <-
    factor(dataset[, 67], levels = activities[, 1], labels = activities[, 2])

#################################################################

### Step 4.
### Appropriately labels the data set with descriptive variable names.

# Make colnames more descriptive according to lectures.
measurements_names <- features[measurements_index, 2]
measurements_names <- gsub("mean", "Mean", measurements_names)
measurements_names <- gsub("std", "Std", measurements_names)
measurements_names <- gsub("[-()]", "", measurements_names)
measurements_names <- gsub("^t", "Time", measurements_names)
measurements_names <- gsub("^f", "Frequency", measurements_names)
measurements_names <- gsub("Acc", "Accelerometer", measurements_names)
measurements_names <- gsub("Gyro", "Gyroscope", measurements_names)
measurements_names <- gsub("Mag", "Magnitude", measurements_names)

names(dataset) <- c(measurements_names, "Activity", "Subject")

##################################################################

### Step 5.
### From the data set in step 4, creates a second, independent tidy data set 
### with the average of each variable for each activity and each subject.

dataset$Subject <- as.factor(dataset$Subject)

tidyset <- aggregate(.~Activity + Subject, data = dataset, mean)
write.table(tidyset, file = "tidy.txt", row.names = FALSE)

##################################################################

# End of file.
