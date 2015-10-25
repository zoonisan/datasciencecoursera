---
title: "CodeBook"
author: "zooni"
date: "October 22, 2015"
output: html_document
---
## Variables
### activity class and name
+ 1 : WALKING
+ 2 : WALKING_UPSTAIRS
+ 3 : WALKING_DOWNSTAIRS
+ 4 : SITTING
+ 5 : STANDING
+ 6 : LAYING

### subject
+ number 1 to 30, each identifies the subject  who performed the activity for each window sample

### features
#### features info
+ The features selected for this database come from the accelerometer and gyroscope 3-axial 
+ raw signals plus tAcc-XYZ and tGyro-XYZ. These time domain signals
+ were captured at a constant rate of 50 Hz. Then they were filtered using a median filter 
+ and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
+ Similarly, the acceleration signal was then separated into body and gravity acceleration signals 
+ (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner 
+ frequency of 0.3 Hz. 

+ Subsequently, the body linear acceleration and angular velocity were derived in time to 
+ obtain Jerk + + signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these 
+ three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, 
+ tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

+ Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
+ fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.

#### feature name abbreviation
+ X, Y, XYZ :  denote 3-axial signals in the X, Y and Z directions.
+ f : the prefix 'f' indicates frequency domain signals.
+ t : the prefix 't' to denote time
++ eg. tBodyGyrojearkmeanY
++ eg. fBodyGyroXYZ, fBodyAccMag 
+ mean: Mean value
+ std: Standard deviation 
