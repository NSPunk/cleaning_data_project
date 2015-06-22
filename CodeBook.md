Code Book
=
Study Design
-
Human Activity Recognition Using Smartphones Dataset
Version 1.0
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

 - 'features_info.txt': Shows information about the variables used on the feature vector.
 - 'features.txt': List of all features.
 - 'activity_labels.txt': Links the class labels with their activity name.
 - 'train/X_train.txt': Training set.
 - 'train/y_train.txt': Training labels.
 - 'test/X_test.txt': Test set.
 - 'test/y_test.txt': Test labels.
 - 
Variables Units of the original data
-
The variables are measured in the three access so you must expect three for each one. For example fBodyAcc should have fBodyAcc-X, fBodyAcc-Y and fBodyAcc-Z
The variable units are described below:

 - Variable with Hertz 
   - fBodyAcc-XYZ
   - fBodyGyro-XYZ
   - fBodyAccJerk-XYZ
   - fBodyAccMag
   - fBodyAccJerkMag
   - fBodyGyroMag
   - fBodyGyroJerkMag
- Variable with radians per second.
  - tBodyAcc-XYZ
  - tGravityAcc-XYZ
  - tBodyAccJerk-XYZ
  - tBodyGyro-XYZ
  - tBodyGyroJerk-XYZ
  - tBodyAccMag
  - tGravityAccMag
  - tBodyAccJerkMag
  - tBodyGyroMag
  - tBodyGyroJerkMag 
  
Summary Choices
-
We were asked to use all the test and training files of this experiments and merge it into one data frame that just contains the means and standard deviations. We also need to use the features names instead of the the numeric values.  The data generated contains 180 rows by 68 columns. 

Code Book
-
Subject 
Activity
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z ,
 tGravityAcc-mean()-X
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z ,
 tGravityAcc-std()-X  
tGravityAcc-std()-Z  
tBodyAccJerk-mean()-X ,
 tBodyAccJerk-mean()-Y  
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z  
tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  
tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y ,
 tBodyGyroJerk-mean()-Z  
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z  
tBodyAccMag-mean()  
tBodyAccMag-std()  
tGravityAccMag-mean()  
tGravityAccMag-std()  
tBodyAccJerkMag-mean() ,
 tBodyAccJerkMag-std()  
tBodyGyroMag-std() ,
 tBodyGyroJerkMag-mean()  
fBodyAcc-mean()-X  
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z  
fBodyAcc-std()-X  
fBodyAcc-std()-Y  
fBodyAcc-std()-Z  
fBodyAccJerk-mean()-X  
fBodyAccJerk-mean()-Y ,
 fBodyAccJerk-mean()-Z  
fBodyAccJerk-std()-Y  
fBodyAccJerk-std()-Z  
fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z  
fBodyGyro-std()-X  
fBodyGyro-std()-Y  
fBodyGyro-std()-Z  
fBodyAccMag-mean()  
fBodyAccMag-std() ,
 fBodyBodyAccJerkMag-mean() ,
fBodyBodyGyroMag-mean()  
fBodyBodyGyroMag-std()  
fBodyBodyGyroJerkMag-mean()  
fBodyBodyGyroJerkMag-std() 