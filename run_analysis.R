# code for getting the raw data files
zipfile <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
getzipfile <- function () download.file(zipfile, method = 'curl', 'data.zip')
if (!file.exists('data.zip')) getzipfile ()
unzip('data.zip')
# use this to convert activity ids to activities
activities <- read.table('UCI HAR Dataset/activity_labels.txt', sep = ' ', header = F, )
# use this to convert column positions to measurements
features <- read.table('UCI HAR Dataset/features.txt', sep = ' ', header = F)
feature_names <- features[[2]]
# get data frame, including adding header from features
get_df <- function (file) {
        df <- read.table(file, header = F)
        names(df) <- feature_names
        means <- grep('mean', feature_names)
        stdevs <- grep('std', feature_names)
        df[, union(means, stdevs)]
}
# add subject and activities columns to data.frame
add_subjects_activities <- function (df, subjfile, actfile) {
        subjdf <- read.table(subjfile, sep = ' ', header = F)
        actdf <- read.table(actfile, sep = ' ', header = F)
        get_activity <- function(i) {
                j <- actdf[[i,1]]
                activities[[j,2]]
        }
        acts <- sapply(1:nrow(df), get_activity)
        df <- cbind(activity = acts, df)
        df <- cbind(subject_id = subjdf[[1]], df)
        df
}
# get test and train data sets, then combine them
testdf <- add_subjects_activities(get_df('UCI HAR Dataset/test/X_test.txt'),
                                  'UCI HAR Dataset/test/subject_test.txt',
                                  'UCI HAR Dataset/test/y_test.txt')
traindf <- add_subjects_activities(get_df('UCI HAR Dataset/train/X_train.txt'),
                                   'UCI HAR Dataset/train/subject_train.txt',
                                   'UCI HAR Dataset/train/y_train.txt')
jointdf <- rbind(testdf, traindf)
# get average measurement values for each activity and subject, then
# recombine to form tidy data set
act_split <- split(jointdf, jointdf$activity)
act_means <- lapply(act_split, function (df) colMeans(df[,3:length(df)]))
act_means_df <- data.frame(act_means)
names(act_means_df)<- sprintf('Activity:%s', names(act_means_df))
subj_split <- split(jointdf, jointdf$subject_id)
subj_means <- lapply(subj_split, function (df) colMeans(df[,3:length(df)]))
subj_means_df <- data.frame(subj_means)
names(subj_means_df) <- sprintf('Subject #%i', 1:length(subj_means_df))
tidy_df <- cbind(act_means_df, subj_means_df)
# write data sets to file
write.csv(jointdf, file = 'mean_and_stdev_measurements.txt')
write.csv(tidy_df, file = 'tidy_measurement_means_by_activity_and_subject.txt')
