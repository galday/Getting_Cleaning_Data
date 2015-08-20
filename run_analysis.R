#Load the package dplyr in order to manage data easily
library(dplyr)

#Read the three files corresponding to the test group: data measurements, activity for each measurement and
# person id for each measurement
test <- read.table("./test/X_test.txt", col.names=c(1:561))
subject_test <- read.table("./test/subject_test.txt")
activities_test <- read.table("./test/y_test.txt")

# The information from the three files is combined in one data frame, test
test <- mutate(test,person=subject_test$V1,activity=activities_test$V1)

#Read the three files corresponding to the train group: data measurements, activity for each measurement and
# person id for each measurement
train <- read.table("./train/X_train.txt", col.names=c(1:561))
subject_train <- read.table("./train/subject_train.txt")
activities_train <- read.table("./train/y_train.txt")

# The information from the three files is combined in one data frame, test
train <- mutate(train,person=subject_train$V1,activity=activities_train$V1)

#The two data frames, test and train are combined in one, total
total <- rbind(test,train)

#The columns corresponding to the mean values and standard deviation from the original measurements are selected, 
#plus the information corresponding to the person id and activity if for each row (columns 562 and 563)
selected_columns <- c(1:6,41:46,121:126,562,563)

#A new data frame is generate only with the above information
total <- total[,selected_columns]

#In this part of the script, the activity id is going to be replaced by the descriptive name according to the code
#present in the file activity labels.txt
#First we read the file...
activity_labels <- read.table("activity_labels.txt")
#We generate a vector with the names
activity_names <- activity_labels$V2
#We generate a vector with the id´s
activities_data <- total$activity
#We replace the id with the full name
activities_data <- activity_names[activities_data]
#We add the new column with the names
total <- mutate(total, activity_desc=activities_data)
#We remove the id column
total <- total[,c(1:19,21)]


#We change the names of the data set to more descriptive texts
total <- rename(total, "Mean_Body_Acceleration_X"= X1, "Mean_Body_Acceleration_Y"= X2,"Mean_Body_Acceleration_Z"= X3)
total <- rename(total, "Standard_dev_Body_Acceleration_X"= X4, "Standard_dev_Body_Acceleration_Y"= X5,"Standard_dev_Body_Acceleration_Z"= X6)
total <- rename(total, "Mean_Gravity_Acceleration_X"= X41, "Mean_Gravity_Acceleration_Y"= X42,"Mean_Gravity_Acceleration_Z"= X43)
total <- rename(total, "Standard_dev_Gravity_Acceleration X"= X44, "Standard_dev_Gravity_Acceleration_Y"= X45,"Standard_dev_Gravity_Acceleration_Z"= X46)
total <- rename(total, "Mean_Body_Giro_X"= X121, "Mean_Body_Giro_Y"= X122,"Mean_Body_Giro_Z"= X123)
total <- rename(total, "Standard_dev_Body_Giro_X"= X124, "Standard_dev_Body_Giro_Y"= X125,"Standard_dev_Body_Giro_Z"= X126)

#Creation of the tidy data set with the average for each activity and each person
#First we group the data set by person and activity description
resumen <- group_by(total,person,activity_desc)

#Using the function summarise_each we can obtain the average for each column of te data set
tidy_data <-summarise_each(resumen,funs(mean))

#The result is written in the working directory with the name tidy_data.txt
write.table(tidy_data,"tidy_data.txt",row.names=FALSE)
