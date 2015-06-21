# Read the variable names
featuresTable <- read.table("data/features.txt",stringsAsFactors = FALSE)
features_names <- featuresTable$V2
variable_names <- append(features_names,c("Subject","Activity"))

# Read  train data
x_train <- read.table("data/train/X_train.txt")
subject_train <- read.table("data/train/subject_train.txt")
y_train <- read.table("data/train/y_train.txt")

# read test data

x_test <- read.table("data/test/X_test.txt")
subject_test <- read.table("data/test/subject_test.txt")
y_test <- read.table("data/test/y_test.txt")

# merge the train 
train_data <- cbind(x_train,subject_train)
train_data <- cbind(train_data,y_train)

# merge test
test_data <- cbind(x_test,subject_test)
test_data <- cbind(test_data,y_test)

# merge train and test
data <- rbind(train_data,test_data)

# change the column names of the data
colnames(data) <- variable_names

#load the activiy names 
act_names <- read.table("data/activity_labels.txt")
act_names <- act_names$V2

# add the descriptive activity name
activities <- data$Activity
activities <- sapply(activities,function(x){act_names[x]})

data$Activity <- activities

# remove features that are not mean or std

features_to_delete <- sapply(variable_names, function(name){
    grepl("mean\\(\\)",name) || grepl("std\\(\\)",name) || grepl("Subject",name) || grepl("Activity",name)  
})

data <- data[,features_to_delete]

tidy_data <- aggregate(data[,1:(ncol(data)-2)],by = data[c("Subject","Activity")],FUN = mean)
write.table(tidy_data,file="tidy_data.txt",row.name=FALSE)