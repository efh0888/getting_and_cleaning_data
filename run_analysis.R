setwd("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset")

# load in the needed data
features <- read.table("features.txt")

training_set <- read.table("train/X_train.txt")
training_labels <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

test_set <- read.table("test/X_test.txt")
test_labels <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

# 4. Appropriately labels the data set with descriptive variable names.
# NOTE: I did this first as I find it much easier to perform later steps, especially step 2.
names(training_set) <- features$V2
names(training_labels) <- "activity"
names(subject_train) <- "subject"

names(test_set) <- features$V2
names(test_labels) <- "activity"
names(subject_test) <- "subject"


# 1. Merges the training and the test sets to create one data set.
train <- cbind(subject_train, training_labels, training_set)
test <- cbind(subject_test, test_labels, test_set)
data <- rbind(train, test)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
names_mean_std <- names(data)[grepl(pattern = "mean()", x = names(data), fixed = TRUE) |
                              grepl(pattern = "std()", x = names(data), fixed = TRUE) |
                              grepl(pattern = "activity", x = names(data), fixed = TRUE) |
                              grepl(pattern = "subject", x = names(data), fixed = TRUE)]
data <- data[, names(data) %in% names_mean_std]


# 3. Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table("activity_labels.txt", col.names = c("code", "name"))
data$activity <- factor(x = data$activity, levels = 1:6, labels = activity_labels$name)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(data.table)
data2 <- data.table(data)

# if you're unfamiliar with data.table syntax, the below simply applies the mean function
# to all columns in data2 grouped by the columns specified in the by parameter.
data2 <- data2[, lapply(.SD, mean), by = .(activity, subject)]
names(data2) <- gsub(pattern = "()", replacement = "", x = names(data2), fixed = TRUE)
names(data2) <- gsub(pattern = "-", replacement = "_", x = names(data2), fixed = TRUE)
nam <- data.frame("names" = names(data2))
write.table(data2, "tidy_data.txt", row.names = FALSE)
