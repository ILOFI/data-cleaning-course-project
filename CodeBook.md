

# Code Book

This is the code book for Course Project of **Getting and Cleaning Data**, one of the **Data Science Specialize Course** in Coursera.

This code book summarizes the cleaned dataset `tidy.txt`.

## Data Description

Human Activity Recognition Using Smartphones Dataset
Version 1.0

Original data source: [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Identifiers

- `Activity` - The type of Activity performed when measuring, which has six levels: 
  - `WALKING`
  - `WALKING_UPSTAIRS`
  - `WALKING_DOWNSTAIRS`
  - `SITTING`
  - `STANDING`
  - `LAYING`
- `Subject` - The id of the subject who performed the activity. Range from 1 to 30.

### Variables

#### Original Description of the Dataset

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

#### Transformation

Referring to the goal of this project, I made some transformation on original dataset to make a tidy data.I just extract only the measurements on the mean and standard deviation for each measurement and make the variable names more descriptive. Finally, I create a second, independent tidy data set with the average of each variable for each activity and each subject, in the file called `tidy.txt`.

So, all the variables in this tidy dataset are:

- `TimeBodyAccelerometer(Mean|Std)[XYZ]` - mean of time body acceleration mean or standard deviation on X/Y/Z axes
- `TimeGravityAccelerometer(Mean|Std)[XYX]` - mean of time gravity acceleration mean or standard deviation on X/Y/Z axes
- `TimeBodyAccelerometerJerk(Mean|Std)[XYZ]` - mean of time acceleration jerk mean or standard deviation  on X/Y/Z axes
- `TimeBodyGyroscope(Mean|Std)[XYZ]` - mean of time body gyroscope mean or standard deviation on X/Y/Z axes
- `TimeBodyGyroscopeJerk(Mean|Std)[XYZ]` - mean of time body gyroscope jerk mean or standard deviation on X/Y/Z axes
- `TimeBodyAccelerometerMagnitude(Mean|Std)` - mean of time body acceleration magnitude mean or standard deviation across axes
- `TimeGravityAccelerometerMagnitude(Mean|Std)` - mean of time gravity acceleration magnitude mean or standard deviation across axes
- `TimeBodyAccelerometerJerkMagnitude(Mean|Std)` - mean of time acceleration jerk magnitude mean or standard deviation across axes
- `TimeBodyGyroscopeMagnitude(Mean|Std)` - mean of time body gyroscope magnitude mean or standard deviation across axes
- `TimeBodyGyroscopeJerkMagnitude(Mean|Std)` - mean of time body gyroscope jerk magnitude mean or standard deviation across axes
- `FrequencyBodyAccelerometer(Mean|Std)[XYZ]` - mean of frequency body acceleration mean or standard deviation on X/Y/Z axes
- `FrequencyBodyAccelerometerJerk(Mean|Std)[XYZ]` - mean of frequency acceleration jerk mean or standard deviation on X/Y/Z axes
- `FrequencyBodyGyroscope(Mean|Std)[XYZ]` - mean of frequency body gyroscope mean or standard deviation on X/Y/Z axes
- `FrequencyBodyAccelerometerMagnitude(Mean|Std)` - mean of frequency body acceleration magnitude mean or standard deviation across axes
- `FrequencyBodyBodyAccelerometerJerkMagnitude(Mean|Std)` - mean of frequency acceleration jerk magnitude mean or standard deviation across axes
- `FrequencyBodyBodyGyroscopeMagnitude(Mean|Std)` - mean of frequency body gyroscope magnitude mean or standard deviation across axes
- `FrequencyBodyBodyGyroscopeJerkMagnitude(Mean|Std)` - mean of frequency body gyroscope jerk magnitude mean or standard deviation across axes

`[XYZ]` is used to denote one of the 3-axial signals in the X, Y and Z directions.

`(Mean|Std)` is used to denote mean or standard deviation of measurements for each activity and each subject.

See `README.md` or `run_analysis.R` for more information.

The complete list of variables of each feature vector is available in `features.txt`.