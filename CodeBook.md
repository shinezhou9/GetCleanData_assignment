DATA DICTIONARY - tidy_data 
========================================================

 CodeBook explains what the data set has: names of variables, a quick explanation of what they are, type of the variable (char, integer, etc.).
 
**activity**

Factor : 6 levels

from act_labels.txt 
 1. WALKING
 2. WALKING_UPSTAIRS
 3. WALKING_DOWNSTAIRS
 4. SITTING
 5. STANDING
 6. LAYING

**subject**

Integer 

1..30 :index of 30 volunteers

from subject_train $ subject_test

volunteers selected for training:levels(as.factor(subject_train$V1))
 "1"  "3"  "5"  "6"  "7"  "8"  "11" "14" "15" "16" "17"
"19" "21" "22" "23" "25" "26" "27" "28" "29" "30"

volunteers selected for testing: levels(as.factor(subject_test$V1))
"2"  "4"  "9"  "10" "12" "13" "18" "20" "24"

**[3]-[81]Variables** 

numeric

normalized to [-1,1]
 
from X_train $ X_test

**Note:** prefix 't' to denote time, the 'f' to indicate frequency domain signals).

**description**
the folowing information come from Feature Selection from [UCI web site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.

*These signals were used to estimate variables of the feature vector for each pattern:'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.*

tBodyAcc-XYZ

tGravityAcc-XYZ

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


*The set of variables that were estimated from these signals are:*

mean(): Mean value

std(): Standard deviation

**manipulate data**Extracts only the measurements on the mean and standard deviation for each measurement.extend t for time, f for freq(frequency), clean up the data.

**variables**
average of each variable for each activity and each subject on mean and standats deviation for each measurement.

 [3] "time_BodyAcc_mean_X"              
 [4] "time_BodyAcc_mean_Y"              
 [5] "time_BodyAcc_mean_Z"              
 [6] "time_Gravity_mean_X"              
 [7] "time_Gravity_mean_Y"              
 [8] "time_Gravity_mean_Z"              
 [9] "time_BodyAccJerk_mean_X"          
[10] "time_BodyAccJerk_mean_Y"          
[11] "time_BodyAccJerk_mean_Z"          
[12] "time_BodyGyro_mean_X"             
[13] "time_BodyGyro_mean_Y"             
[14] "time_BodyGyro_mean_Z"             
[15] "time_BodyGyroJerk_mean_X"         
[16] "time_BodyGyroJerk_mean_Y"         
[17] "time_BodyGyroJerk_mean_Z"         
[18] "time_BodyAccMag_mean"             
[19] "time_GravityMag_mean"             
[20] "time_BodyAccJerkMag_mean"         
[21] "time_BodyGyroMag_mean"            
[22] "time_BodyGyroJerkMag_mean"        
[23] "freq_BodyAcc_mean_X"              
[24] "freq_BodyAcc_mean_Y"              
[25] "freq_BodyAcc_mean_Z"              
[26] "freq_BodyAcc_meanFreq_X"          
[27] "freq_BodyAcc_meanFreq_Y"          
[28] "freq_BodyAcc_meanFreq_Z"          
[29] "freq_BodyAccJerk_mean_X"          
[30] "freq_BodyAccJerk_mean_Y"          
[31] "freq_BodyAccJerk_mean_Z"          
[32] "freq_BodyAccJerk_meanFreq_X"      
[33] "freq_BodyAccJerk_meanFreq_Y"      
[34] "freq_BodyAccJerk_meanFreq_Z"      
[35] "freq_BodyGyro_mean_X"             
[36] "freq_BodyGyro_mean_Y"             
[37] "freq_BodyGyro_mean_Z"             
[38] "freq_BodyGyro_meanFreq_X"         
[39] "freq_BodyGyro_meanFreq_Y"         
[40] "freq_BodyGyro_meanFreq_Z"         
[41] "freq_BodyAccMag_mean"             
[42] "freq_BodyAccMag_meanFreq"         
[43] "freq_BodyBodyAccJerkMag_mean"     
[44] "freq_BodyBodyAccJerkMag_meanFreq" 
[45] "freq_BodyBodyGyroMag_mean"        
[46] "freq_BodyBodyGyroMag_meanFreq"    
[47] "freq_BodyBodyGyroJerkMag_mean"    
[48] "freq_BodyBodyGyroJerkMag_meanFreq" 
[49] "time_BodyAcc_std_X"               
[50] "time_BodyAcc_std_Y"               
[51] "time_BodyAcc_std_Z"               
[52] "time_Gravity_std_X"               
[53] "time_Gravity_std_Y"               
[54] "time_Gravity_std_Z"               
[55] "time_BodyAccJerk_std_X"           
[56] "time_BodyAccJerk_std_Y"           
[57] "time_BodyAccJerk_std_Z"           
[58] "time_BodyGyro_std_X"              
[59] "time_BodyGyro_std_Y"              
[60] "time_BodyGyro_std_Z"              
[61] "time_BodyGyroJerk_std_X"          
[62] "time_BodyGyroJerk_std_Y"          
[63] "time_BodyGyroJerk_std_Z"          
[64] "time_BodyAccMag_std"              
[65] "time_GravityMag_std"              
[66] "time_BodyAccJerkMag_std"          
[67] "time_BodyGyroMag_std"             
[68] "time_BodyGyroJerkMag_std"         
[69] "freq_BodyAcc_std_X"               
[70] "freq_BodyAcc_std_Y"               
[71] "freq_BodyAcc_std_Z"               
[72] "freq_BodyAccJerk_std_X"           
[73] "freq_BodyAccJerk_std_Y"           
[74] "freq_BodyAccJerk_std_Z"           
[75] "freq_BodyGyro_std_X"              
[76] "freq_BodyGyro_std_Y"              
[77] "freq_BodyGyro_std_Z"              
[78] "freq_BodyAccMag_std"              
[79] "freq_BodyBodyAccJerkMag_std"      
[80] "freq_BodyBodyGyroMag_std"         
[81] "freq_BodyBodyGyroJerkMag_std" 
