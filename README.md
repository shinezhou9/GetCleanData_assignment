Introduction
=======================================================
## For peer review
if you cannot see the tity_data in "tidy" ways, please
see the csv file in this repo. "https://github.com/shinezhou9/GetCleanData_assignment/blob/master/tidy_data.csv".

## Data

This assignnment uses data from UCI Machine Learning Repository. A  description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones



**Dataset**

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

- Description**(the following description are taken from the [UCI web site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Mesurements of experiments which have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities **(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)** wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, **where 70% of the volunteers was selected for generating the training data and 30% the test data.**

**files included in "UCI HAR Dataset"**

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.



## Assignment
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. There are 3 other files in the repo:
- a tidy data set (tidy_data.csv)
- a R script (run_analysis.R) for performing the analysis
- a code book (CodeBook.md) 

**Steps**
- Read each data tables in the downloaded folder "UCI HAR Dataset"(read.table)
- Merges the "subject_tain", "X_train" and "y_train to create new dataset **train** and apply the same to create dataset **test**(cbind).Merge datasets **train** and **test** to one new data set **data_raw** (cbind).
- Clean up the features names(gsub), And appropriately labels the data set with descriptive variable names( feature.txt), and the last two columns is "sub" for subject, and "act_labels" for activity.
- Extracts only the measurements on the mean and standard eviation for each measurement, and create the new dataset **data1**(grep)
-  create a new colume called "act_names" to name the activities in **data1** column "act_labels"(use the names from activitylabels.txt to set levels for act_names column)
-  Creates a second, independent tidy data set **data_tidy** with the average of each variable for each activity and each subject. (aggeregate the data for each features'measurents(**data1[,1:79]** by the grouping elements act_names and sub in data1.



 
