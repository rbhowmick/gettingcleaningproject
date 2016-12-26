# Getting and Cleaning Data Course Project
## This file explains how the analysis was performed.

1.  The "run_analysis.R" file is the single script used to generate the tidy dataset for this project.
2.  Before running the "run_analysis.R" script, make sure 
  1.  The 'dplyr' package is installed.
  2. The Samsung data is in the same working directory as the "run_analysis.R" script.
3.  The script performs the following steps during execution
  1.  Reads the activity labels into a table
  2.  Reads the column names into a table
  3.  Reads the test and train data, merging the subject id's along the way
  4.  Merges the test and train data.
  5.  Extracts only the measurements on the mean and standard deviation for each measurement.
  6.  Uses descriptive activity names to name the activities in the data set
  7.  Appropriately labels the data set with descriptive variable names.
  8.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


