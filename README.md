Word of Caution please create a projectdata folder in your working  directory and unzip the project data into that so as to allow this script to function

This  Script in this repository is a single Script which does the following.

1) Reads the X_train,Subject_train and y_train Training Data Sets into different tables
2)  Subject_Train and y_train vectors were thereafter column bound to the X_Train set
3) Features Info is thereafter read into another table namely attributes.
4)A character vector with two new strings respectively for the subject ID as well as the activity code is then prefixed o the features/attributes which subset and cast as a vector of strings for concatenation.
5)Concatenated vector is thereafter assigned to the column names of the column bound trainign set.
6) Same procedure is repeated for the Test sets too. Only exception being that the features file is not read again
7) Both the data sets are bound together by rowbind function.
8) Combined data set is subsetted by filtering for columns with mean or std or ID or Activity in their column names.
9)Pruned combined data set is saved as file using write.table.
10)Pruned Data set is read into another table
11)Subject/ID wise and activity wise mean of various attributes is computed using aggregate by function.
12) Result from 11 is subset to drop first two columns showing the grouping effected by the aggregate by function
13)Result is sorted by order function.
14) Activity labels are read into a table and finally inserted into the sorted result table which then is written  back to the disk as tidy using write.file as tidydata.txt
