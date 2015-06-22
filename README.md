Getting and Cleaning Data Project
============================

In order to run this script download this file 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
end extract the contents in a folder named data in the directory. 

Code Description
------------------------

 - After downloading the data the first thing we do is read the variables names. For this we read the **features.txt** , obtain the feature names row and store it in variable_names.
 - The next thing we need to do is to read all the the train data. We read the **X_train.txt**, **subject_train.txt**,  **y_train.txt** and store it in x_train, subject_train and y_train variables.
 - Then we do the same but with the **X_test.txt**,subject_test.txt**, **y_test.txt** and store it in x_test, subject_test and y_test.
 - Now we need to do the first merge, we merge the train data and store it in the train_data variable. Then we do the second merge between the test variables and store it in test_data.
 - After we have this two data frames we merge train_data with the test_data using the  **rbind** function and store it in the data variable.
 - They ask us for use the activity names instead of the numeric values,  so now we need to replace the values with the names in our data. For that we get the activity labels from the file **activity_labels.txt** and store it in the act_names variable. Then we replace it in the data variable using a sapply.
 - Now we need to remove all the features that are not a mean or standard deviation. For this we apply again an apply to obtain a vector of the columns that we need to remove and then we remove it from our data variable.
 - Now we create the tidy data which is a subset of all the averages by Activity and subject. For this we use the aggregate function in all the columns but the last two.
 - Finally we save the file as a txt using the write.table and removing the row names-
