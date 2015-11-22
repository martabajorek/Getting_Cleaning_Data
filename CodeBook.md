
1. ORIGINAL DATA


Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Data comes from the experiments conducted by:

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================
License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
======================================




2. DESCRIPTION OF THE EXPERIMENTS

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 




3.VARIABLES

For each record it is provided:
- An identifier of the subject who carried out the experiment.
- Actifity label (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
- An identifier of the status of the subject who carried out the experiment (TRAINING / TEST)
- Mean and standard deviation of the following features (normalized and bounded within [-1,1]):
	tBodyAcc-XYZ
	GravityAcc-XYZ
	tBodyAccJerk-XYZ
	tBodyGyro-XYZ
	tBodyGyroJerk-XYZ
	tBodyAccMag
	tGravityAccMag
	tBodyAccJerkMag
	tBodyGyroMag
	tBodyGyroJerkMag
	fBodyAcc-XYZ
	fBodyAccJerk-XYZ
	fBodyGyro-XYZ
	fBodyAccMag
	fBodyAccJerkMag
	fBodyGyroMag
	fBodyGyroJerkMag

Descriptive variable names were assigned to the variable based on features labels with slight modifications: "()" signs were cleared from the labels while "." signs (dots) where left in the labels for the sake of readability. Each variable name consists of name consists of: 1). features's name (eg.tBodyAcc, GravityAcc), 2). measure (mean / standard deviation), 3). vector it concerns (X / Y / Z) - wherever appropriate





4. TRANSFORMATIONS TO THE ORIGINAL DATA.

Original data were merged into one data set course_project_tidy_data containing both training and the test sets (subject status marked in the column 'status' of the new data set).
Only the measurements on the mean and standard deviation for each measurement are contained in the data set (other measures weres skipped). 
Additional vectors were skipped as purely technical: the vectors obtained by averaging the signals in a signal window sample (the angle() variables: gravityMean, tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean, tBodyGyroJerkMean).
Descriptive activity names were assigned the activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
Descriptive variable names were assigned to the variable based on features labels with slight modifications: "()" signs were cleared from the labels while "." signs (dots) where left in the labels for the sake of readability. Each variable name consists of name consists of: 1). features's name (eg.tBodyAcc, GravityAcc), 2). measure (mean / standard deviation), 3). vector it concerns (X / Y / Z) - wherever appropriate



   

