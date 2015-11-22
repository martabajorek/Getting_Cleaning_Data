#download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "./my_dataset.zip")
# unzip("my_dataset.zip")

features <- read.table("UCI HAR Dataset/features.txt")
features2 <- features[,2]
features2 <- sub(pattern="()", replacement="", x=features2, fixed=TRUE)
X_train <- read.table("UCI HAR Dataset/train/X_train.txt",col.names=features2)
Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt", col.names="activity")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt",col.names="subject")
my_df_train <- cbind(subject_train,Y_train,status="train", X_train)
X_test <- read.table("UCI HAR Dataset/test/X_test.txt",col.names=features2)
Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt", col.names="activity")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt",col.names="subject")
my_df_test <- cbind(subject_test,Y_test,status="test", X_test)
my_df <- rbind(my_df_train,my_df_test)
means <- grep("mean",colnames(my_df))
stds <- grep("std",colnames(my_df))
my_columns <- c(1,2,3, means,stds)
my_df2 <- my_df[,my_columns]
activities <- read.table("UCI HAR Dataset/activity_labels.txt",col.names=c("activity", "activity_name"))
my_df3 <- merge(my_df2,activities)
my_df2$activity <- my_df3$activity_name

# write.table(my_df2,"course_project_tidy_data.txt",row.names=FALSE)