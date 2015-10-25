---
title: "README"
author: "zooni"
date: "October 22, 2015"
output: html_document
---
## Notes for run_anlysis.R
+ The source data is collected from the accelerometers from the Samsung Galaxy S smartphone.
+ The data set comes in two sets:the training data and test data
# requirements for execution
+ Library dplyr
+ Library plyr
+ the working directory must contain following data files
++ UCI HAR Dataset/train/X_train.txt
++ UCI HAR Dataset/train/Y_train.txt
++ UCI HAR Dataset/train/subject_train.txt
++ UCI HAR Dataset/test/X_test.txt 
++ UCI HAR Dataset/test/Y_test.txt
++ UCI HAR Dataset/test/subject_test.txt
++ UCI HAR Dataset/features.txt 

# Steps taken to get summary data is the following:
+ 1. Traning and test data set are merged: SetX, SetY and sbuject contains merged measurements, 
+    activity code and subject repectively.
+ 2. Only mean and standard deviation for each measurements are extracted from the merged data set.
+ 3. The variable names are imported from features.txt and edited to look nicer by removing () and -
+ 4. The dataset variables are renamed using the edited feature names
+ 5. Activity name variable is added to the dataset by matching activity code in SetY
+ 6. Data has been agregated to get the mean of each measurements by subject and activity 
+ 7. The result summary data is stored in the file: summay_by_subj_activity.txt  
