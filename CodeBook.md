# Codebook

This is the codebook for tidydataset.txt.

## Identification

`subject` - The ID for each subject

`activity` - The activity being performed

## Activity Labels

`Walking` - Walking on a surface

`Walking_Upstairs` - Walking upstairs

`Walking_Downstairs` - Walking downstairs

`Sitting` - Sitting down

`Standing` - Standing

`Laying` - Laying

## Measurements

`tBodyAcc-meanX`

`tBodyAcc-meanY`

`tBodyAcc-meanZ`  

`tGravityAcc-meanX`

`tGravityAcc-meanY`

`tGravityAcc-meanZ` 

`tBodyAccJerk-meanX`

`tBodyAccJerk-meanY`

`tBodyAccJerk-meanZ`

`tBodyGyro-meanX`

`tBodyGyro-meanY`

`tBodyGyro-meanZ`

`tBodyGyroJerk-meanX`

`tBodyGyroJerk-meanY`

`tBodyGyroJerk-meanZ`  

`tBodyAccMag-mean`  

`tGravityAccMag-mean`

`tBodyAccJerkMag-mean`

`tBodyGyroMag-mean`

`tBodyGyroJerkMag-mean`

`fBodyAcc-meanX`

`fBodyAcc-meanY`

`fBodyAcc-meanZ` 

`fBodyAccJerk-meanX`  

`fBodyAccJerk-meanY`

`fBodyAccJerk-meanZ`

`fBodyGyro-meanX` 

`fBodyGyro-meanY`

`fBodyGyro-meanZ` 

`fBodyAccMag-mean` 

`fBodyBodyAccJerkMag-mean`

`fBodyBodyGyroMag-mean`

`fBodyBodyGyroJerkMag-mean`

`tBodyAcc-stdX`

`tBodyAcc-stdY` 

`tBodyAcc-stdZ`

`tGravityAcc-stdX`

`tGravityAcc-stdY`

`tGravityAcc-stdZ`

`tBodyAccJerk-stdX`

`tBodyAccJerk-stdY`

`tBodyAccJerk-stdZ`

`tBodyGyro-stdX`

`tBodyGyro-stdY`

`tBodyGyro-stdZ`

`tBodyGyroJerk-stdX`

`tBodyGyroJerk-stdY`

`tBodyGyroJerk-stdZ`

`tBodyAccMag-std`

`tGravityAccMag-std`

`tBodyAccJerkMag-std`

`tBodyGyroMag-std`

`tBodyGyroJerkMag-std`

`fBodyAcc-stdX`

`fBodyAcc-stdY` 

`fBodyAcc-stdZ`

`fBodyAccJerk-stdX`

`fBodyAccJerk-stdY`

`fBodyAccJerk-stdZ`

`fBodyGyro-stdX`

`fBodyGyro-stdY`

`fBodyGyro-stdZ`

`fBodyAccMag-std`

`fBodyBodyAccJerkMag-std`

`fBodyBodyGyroMag-std`

`fBodyBodyGyroJerkMag-std`

## Transformations

1. Combine the subject, Y, and X rows from the train and test set to create the dataframe.
  
2. Add Column Names to the dataframe using names from features.txt.
  
3. Apply dyplyr and clean the data by filtering column names for mean and std and labeling activities.  

4. Find the mean of the mean and std of each activity by subject.
  
5. Remove characters ( ()- and ()) out of the column names.
  