# Getting and Cleaning Data Course Project
## This file explains how the analysis was performed.

1.  The "run_analysis.R" file is the single script used to generate the tidy dataset for this project.
2.  Before running the "run_analysis.R" script, make sure 
  i.  The 'dplyr' package is installed.
  ii. The Samsung data is in the same working directory as the "run_analysis.R" script.
3.  The script performs the following steps during execution
  i.  Reads the activity labels into a table
  ii.  Reads the column names into a table
  iii.  Reads the test and train data, merging the subject id's along the way
  iv.  Merges the test and train data.
  v.  Extracts only the measurements on the mean and standard deviation for each measurement.
  vi.  Uses descriptive activity names to name the activities in the data set
  vii.  Appropriately labels the data set with descriptive variable names.
  viii.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


