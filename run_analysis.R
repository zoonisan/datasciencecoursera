## run_analysis.R
## This script is to create a tidy dataset from a source data.
## The result tidy dataset contains the average of each variable for each activity and each subject.
# 
# 
## Read test and training data sets from files
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
subj_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
subj_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
feature <- read.table("./UCI HAR Dataset/features.txt")

## Merge the training and test data to one data frame.
setX <- rbind(X_train, X_test)
setY <- rbind(Y_train, Y_test)
subject <- rbind(subj_train, subj_test)

# clean up temporary data
rm(X_train); rm(Y_train); rm(subj_train)
rm(X_test); rm(Y_test); rm(subj_test)

# tidy up feature names by removing () and -
colnames <-as.data.frame(lapply(list(feature[,2]), function(a) {gsub('\\(\\)|-', '',a) }))

## Extract mean and standard deviation for each measurements
data <- setX[,c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 
                227:228, 240:241, 253:254, 266:271, 294:296, 345:350, 373:375, 
                424:429, 452:454, 503:504, 513, 516:517, 526, 529:530, 539, 542:543, 552)]
names(data) <- colnames[c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 
                  227:228, 240:241, 253:254, 266:271, 294:296, 345:350, 373:375, 
                  424:429, 452:454, 503:504, 513, 516:517, 526, 529:530, 539, 542:543, 552),1] 

## Add activity and subject to the data
names(subject) <- "subject"
names(setY) <- "activitycode"
data <- cbind(subject, setY, data)
# Add a activity name variable
activity <- data.frame(activitycode=c(1,2,3,4,5,6), 
                           activityname=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS",
                                  "SITTING","STANDING","LAYING"))
library(plyr)
data <- arrange(join(data,activity), activitycode)

## Create a  summary statistics and write to a new file.
library(dplyr)
data <- group_by(data, subject, activityname) 
tdata <- summarize_each(data, funs(mean))
write.table(tdata, file="summary_by_subj_activity.txt", row.name=FALSE)
