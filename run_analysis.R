library(dplyr)

#Reads the activity labels into a table
activity_labels<-(read.table("activity_labels.txt"))[["V2"]]

#Reads the column names into a table
column_names<-gsub("\\(\\)","",(read.table("features.txt"))[["V2"]])

#Reads the test data, appropriately labels data set, and merges subject data
test_data_x<-read.table("test/X_test.txt", col.names=column_names)
test_data_y<-read.table("test/y_test.txt",col.names={"activity_label"})
subject_test<-read.table("test/subject_test.txt",col.names={"subject"})
test_data_x<-cbind(test_data_x,subject_test,test_data_y)

#Reads the training data, appropriately labels data set, and merges subject data
train_data_x<-read.table("train/X_train.txt",col.names=column_names)
train_data_y<-read.table("train/y_train.txt",col.names={"activity_label"})
subject_train<-read.table("train/subject_train.txt",col.names={"subject"})
train_data_x<-cbind(train_data_x,subject_train,train_data_y)

#Merges the test and training data
merged_data<-merge(train_data_x,test_data_x,all=TRUE)

#Extracts only the measurements on the mean and standard deviation for each measurement
mean_stddev_measurements<-merged_data[,grep("mean$|mean[-,\\.]+|std|subject|activity_label",names(merged_data))]

#Uses descriptive activity names to name the activities in the data set.
mean_stddev_measurements<-mutate(mean_stddev_measurements,activity_label=activity_labels[activity_label])

#Form the data set in step 4, creates second data set with the average of each variable for each activity and each subject
summarized_measurements<-mean_stddev_measurements %>% group_by(subject,activity_label) %>% summarize_each(funs(mean))
write.table(summarized_measurements,file="tidy_data_rajesh.txt",row.name=FALSE)