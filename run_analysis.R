# data source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# 1. Merges the training and the test sets to create one data set.
# all measured features - col labels in features.txt
dataX <- read.table('UCI HAR Dataset/train/X_train.txt')
dataX <- rbind(dataX, read.table('UCI HAR Dataset/test/X_test.txt'))

# activity type, for each row in X - row labels in activity_labels.txt
dataY <- read.table('UCI HAR Dataset/train/y_train.txt')
dataY <- rbind(dataY, read.table('UCI HAR Dataset/test/y_test.txt'))

# subject id for each observation
dataSubject <- read.table('UCI HAR Dataset/train/subject_train.txt')
dataSubject <- rbind(dataSubject, read.table('UCI HAR Dataset/test/subject_test.txt'))

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- read.table('UCI HAR Dataset/features.txt')
names(dataX) <- features[, 2] # set the col names to be the actual feature names
search <- grep('mean\\(\\)|std\\(\\)', features[,2]) # indexes for features containing std() and mean()
dataX <- dataX[, search] # get data only for the std() and mean() cols

# 3. Uses descriptive activity names to name the activities in the data set
activities <- read.table('UCI HAR Dataset/activity_labels.txt')
dataY[,1] <- activities[dataY[,1], 2] # replace the number with actual activity name

# 4. Appropriately labels the data set with descriptive variable names. 
names(dataY) <- 'activity' # only 1 col
names(dataSubject) <- 'subject' # only 1 col
dataNew <- cbind(dataSubject, dataY, dataX) # new df, each row is subject-activity-data


# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# calculate mean for each measurement col (3:68), group on subject and activity
dataAvg <- aggregate(dataNew[, 3:68], by=list(dataNew$subject, dataNew$activity), FUN = mean)

# name cols
names(dataAvg) <- c('subject', 'activity', colnames(dataNew[, 3:68]))

# save
write.table(dataAvg, 'average_per_subject_and_activity.txt', row.name=FALSE)
