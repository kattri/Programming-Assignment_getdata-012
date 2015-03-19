## This script is in response to the Programming Assignment for the getdata-012 course 
## on coursera

## Read Training Data
     training_DT<-read.table("./projectdata/train/X_train.txt", header =FALSE)
     ## Read volunteer Id
     training_VID<-read.table("./projectdata/train/subject_train.txt",header =FALSE)
     ## read Activity List
     training_AList<-read.table("./projectdata/train/y_train.txt",header =FALSE)
     ## read attribute names
     attributes<-read.table("./projectdata/features.txt",header =FALSE)
     ## bind Activity list to the Data
     training_DT<-cbind(training_AList,training_DT)
     ## bind VolunteerId to the training data
     training_DT<-cbind(training_VID,training_DT)
     ## agument attributes with additonal names ID and Activity (Vectorise attribute)
     C_names<-c("ID","Activity",as.vector(attributes[,2]))
     ##Assign Column Names to training_DT
     colnames(training_DT)<-C_names


                                   ## Read Test Data
     ## Read Training Data
     test_DT<-read.table("./projectdata/test/X_test.txt", header= FALSE)
     ## Read volunteer Id
     test_VID<-read.table("./projectdata/test/subject_test.txt",header= FALSE)
     ## read Activity List
     test_AList<-read.table("./projectdata/test/y_test.txt",header= FALSE)
     ## bind Activity list to the Data
     test_DT<-cbind(test_AList,test_DT)
     ## bind VolunteerId to the training data
     test_DT<-cbind(test_VID,test_DT)
     ##Assign Column Names to training_DT
     colnames(test_DT)<-C_names

#Combine both data tables 
     combined_DT<-rbind(training_DT,test_DT)

#Abstract Combined  Data for ID,Activity,Parameter Means as well as SD()
    combined_DT<-combined_DT[,grep("[mM]ean()|[Ss]td()|ID|Activity",colnames(training_DT))]
#write out the combined data to the disk
     write.table(combined_DT,"./projectdata/combined_DT.txt")
     
##readin the data for second part of the assignment
combined_DT1<-read.table("./projectdata/combined_DT.txt",header=TRUE)

##aggregate using aggregate and by function
result<-aggregate(x=combined_DT1,by=list(combined_DT1$ID,combined_DT1$Activity),
                  FUN ="mean")

##remove extra columns introduced giving group IDs
result<-result[,3:90]
     
##sort the result with ID first and the Activity as the second field
sorted_result<-result[order(result$ID,result$Activity),]
#read Activity Labels
     activity_Table<-read.table("./projectdata/activity_labels.txt",header= FALSE,stringsAsFactors=FALSE)
##Introduce Activity labels
     for(i in 1:nrow(activity_Table))
          {
          sorted_result$Activity<-gsub(i,activity_Table[i,2],sorted_result$Activity) 
     }
##sorted_result$Activity<-gsub("1","WALKING",sorted_result$Activity)
##sorted_result$Activity<-gsub("2","WALKING_UPSTAIRS",sorted_result$Activity)
##sorted_result$Activity<-gsub("3","WALKING_DOWNSTAIRS",sorted_result$Activity)
##sorted_result$Activity<-gsub("4","SITTING",sorted_result$Activity)
##sorted_result$Activity<-gsub("5","STANDING",sorted_result$Activity)
##sorted_result$Activity<-gsub("6","LAYING",sorted_result$Activity)
write.table(sorted_result,"./projectdata/tidydata.txt",sep="\t",row.names=FALSE)