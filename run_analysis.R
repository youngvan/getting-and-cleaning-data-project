# Reading trainin data set
training = read.csv("train/X_train.txt", sep="", header=FALSE)
training[,562] = read.csv("train/Y_train.txt", sep="", header=FALSE)
training[,563] = read.csv("train/subject_train.txt", sep="", header=FALSE)

# Reading testing data set
testing = read.csv("test/X_test.txt", sep="", header=FALSE)
testing[,562] = read.csv("test/Y_test.txt", sep="", header=FALSE)
testing[,563] = read.csv("test/subject_test.txt", sep="", header=FALSE)

# Reading activities data set
activities = read.csv("activity_labels.txt", sep="", header=FALSE)

# Reading features data set
features = read.csv("features.txt", sep="", header=FALSE)

# Standardizing captions 
features[,2] = gsub('-mean', 'Mean', features[,2])
features[,2] = gsub('-std', 'Std', features[,2])
features[,2] = gsub('[-()]', '', features[,2])

# Merge training and test sets together
allData = rbind(training, testing)

# Get only the features on mean and std. dev.
features <- features[c(grep("Mean", features[,2]), grep("Std", features[,2])),]

# filter data to leave only needed columns
filteredData <- allData[,c(features$V1, 562, 563)]
colnames(filteredData) <- tolower(c(features$V2, "Activity", "Subject"))

# Rename activity from numbers to names
for (i in activityLabels$V1) {
  filteredData$activity <- gsub(activityLabels[i, 1], activityLabels[i, 2], filteredData$activity)
}

# Aggregating data
tidyData = aggregate(filteredData, by=list(activity = filteredData$activity, subject = filteredData$subject), mean)

# Writing result file
write.table(tidyData[, 0:88], "tidy.txt")
