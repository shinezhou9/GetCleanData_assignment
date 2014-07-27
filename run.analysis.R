#read the data with read.table()
sub_train <- read.table("./train/subject_train.txt")
X_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
sub_test <- read.table("./test/subject_test.txt")
X_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
act_labels<- read.table("./activity_labels.txt", stringsAsFactors = FALSE)


#Step1. Merges the training and the test sets to create one data set.
#using cbind() to create dataframe "train" which including the "subject_train", "X_train" and "y_train" data, the same applys to dataframe "test"
train <- cbind(X_train, sub_train, y_train)
test <- cbind(X_test, sub_test, y_test)

#using rbind() to merge the two dataframes "train" and "test" into one dataframe: "data_raw" 
data_raw <- rbind(train, test)

#clean up the data with gsub(). There are characters in the names "-" or "," that will cause problems in analysis in R, and expand t and f to time and freq(frequency), and correct "BodyBody" which seems to be a engine mistake on the people who prepared the data to "Body"
fet <- read.table("./features.txt")
fet$V2 <- gsub("\\(\\)", "", fet$V2)
#fet$V2 <- gsub("[[:punct:]]", "_", fet$V2)
fet$V2 <- gsub("-", "_", fet$V2)
fet$V2 <- gsub("tBody", "time_Body", fet$V2)
fet$V2 <- gsub("tGravityAcc", "time_Gravity", fet$V2)
fet$V2 <- gsub("fBody", "freq_Body", fet$V2)
fet$V2 <- gsub("fBody", "freq_Body", fet$V2)

#giving the colume names to "data_raw", the first 561 columes'names come from "features", the last two columes are "data_type"(train_data or test_data) and "activity"
names(data_raw) <- c(fet[,2], "sub", "act_labels")


#step2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#identifying the columns by grep(), and subseting the columns and the "sub" and "act_labels" columns
m <- grep("mean", fet$V2)
g <- grep("std", fet$V2)
data1 <- data_raw[,c(m,g, 562, 563)]

#step3. Uses descriptive activity names to name the activities in the data set.
#change the value in last column(represent activity labels) to factors, and use the names in "act_label" dataframe as the level of the factors. 81 is the index of the last column in "data1"
data1$act_names <- as.factor(data1$act_labels)
levels(data1$act_names) <- act_labels[,2]

#step4 Appropriately labels the data set with descriptive variable names. 
#did that in step1


#step5. Using aggregate() to creates a second, independent tidy data set "data_clean" with the average of each variable for each activity and each subject. 

data_clean <- aggregate(data1[,1:79], by = list(activity = data1$act_names, subject=data1$sub), FUN = mean)
head(data_clean)
