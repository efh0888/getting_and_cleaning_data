## Codebook

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation


##names			description
*activity		character, 6 activity names
*subject			integer 1-30, denoting which subject is performing the activity
*tBodyAcc_mean_X		Mean triaxial acceleration from the accelerometer (total acceleration) for time domain signals
*tBodyAcc_mean_Y		time domain signals
*tBodyAcc_mean_Z		time domain signals
*tBodyAcc_std_X		time domain signals
*tBodyAcc_std_Y		time domain signals
*tBodyAcc_std_Z		time domain signals
*tGravityAcc_mean_X	time domain signals
*tGravityAcc_mean_Y	time domain signals
*tGravityAcc_mean_Z	time domain signals
*tGravityAcc_std_X	time domain signals
*tGravityAcc_std_Y	time domain signals
*tGravityAcc_std_Z	time domain signals
*tBodyAccJerk_mean_X	time domain signals
*tBodyAccJerk_mean_Y	time domain signals
*tBodyAccJerk_mean_Z	time domain signals
*tBodyAccJerk_std_X	time domain signals
*tBodyAccJerk_std_Y	time domain signals
*tBodyAccJerk_std_Z	time domain signals
*tBodyGyro_mean_X	time domain signals
*tBodyGyro_mean_Y	time domain signals
*tBodyGyro_mean_Z	time domain signals
*tBodyGyro_std_X		time domain signals
*tBodyGyro_std_Y		time domain signals
*tBodyGyro_std_Z		time domain signals
*tBodyGyroJerk_mean_X	time domain signals
*tBodyGyroJerk_mean_Y	time domain signals
*tBodyGyroJerk_mean_Z	time domain signals
*tBodyGyroJerk_std_X	time domain signals
*tBodyGyroJerk_std_Y	time domain signals
*tBodyGyroJerk_std_Z	time domain signals
*tBodyAccMag_mean		time domain signals
*tBodyAccMag_std		time domain signals
*tGravityAccMag_mean		time domain signals
*tGravityAccMag_std		time domain signals
*tBodyAccJerkMag_mean		time domain signals
*tBodyAccJerkMag_std		time domain signals
*tBodyGyroMag_mean		time domain signals
*tBodyGyroMag_std		time domain signals
*tBodyGyroJerkMag_mean		time domain signals
*tBodyGyroJerkMag_std		time domain signals
*fBodyAcc_mean_X		frequency domain signals
*fBodyAcc_mean_Y		frequency domain signals
*fBodyAcc_mean_Z		frequency domain signals
*fBodyAcc_std_X			frequency domain signals
*fBodyAcc_std_Y			frequency domain signals
*fBodyAcc_std_Z			frequency domain signals
*fBodyAccJerk_mean_X		frequency domain signals
*fBodyAccJerk_mean_Y		frequency domain signals
*fBodyAccJerk_mean_Z		frequency domain signals
*fBodyAccJerk_std_X		frequency domain signals
*fBodyAccJerk_std_Y		frequency domain signals
*fBodyAccJerk_std_Z		frequency domain signals
*fBodyGyro_mean_X		frequency domain signals
*fBodyGyro_mean_Y		frequency domain signals
*fBodyGyro_mean_Z		frequency domain signals
*fBodyGyro_std_X		frequency domain signals
*fBodyGyro_std_Y		frequency domain signals
*fBodyGyro_std_Z		frequency domain signals
*fBodyAccMag_mean		frequency domain signals
*fBodyAccMag_std		frequency domain signals
*fBodyBodyAccJerkMag_mean	frequency domain signals
fBodyBodyAccJerkMag_std	frequency domain signals
fBodyBodyGyroMag_mean	frequency domain signals
fBodyBodyGyroMag_std	frequency domain signals
fBodyBodyGyroJerkMag_mean	frequency domain signals
fBodyBodyGyroJerkMag_std	frequency domain signals


