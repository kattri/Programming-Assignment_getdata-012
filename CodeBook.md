tidydata is summary of the observations carried out on 30 different volunteers based on the feedback from sensors in their Mobile Phones tied to their waist. Observations have been affected with the volunteers undergoing different daily movements so called activities. The observations were collected from acceleration sensors as well as gyroscopes(angular accelerations and thereafter were filtered using  various transformations to analyse various component parameters. These parameters were thereafter further statistically analysed to compute various statistics for these observations. Out of these data the mean and standard deviation of various parameters have been further summarised for various volunteers based on different activities and same are abstracted in the TIDY DAT set which is a data set comprising of 180 observations comprising 88 parameters.  Two of the variables in the observations are 
This Summary  comprises of acceleration in three dimensions namely X,Y,Z. Various variables in the data table are described below

 Volunteer ID Variable Names "ID" values from 1 to 30
 
 Activity Undertaken by the Volunteer Variable name "Activity"  can  take following values WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING  LAYING
Acceleration Time Domain Signals Variable Names
Triaxial Body Acceleration Means and Standard deviation
 "tBodyAcc.mean...X"              "tBodyAcc.mean...Y"               		      "tBodyAcc.mean...Z"                
 "tBodyAcc.std...X"                    "tBodyAcc.std...Y"                    		      "tBodyAcc.std...Z"   
   
 Triaxial Gravity Acceleration Means and Standard deviation
 "tGravityAcc.mean...X"             "tGravityAcc.mean...Y"                  		 "tGravityAcc.mean...Z"               
 "tGravityAcc.std...X"                  "tGravityAcc.std...Y"                  		   "tGravityAcc.std...Z"    
   
Triaxial Body Jerks a Means and Standard deviation
 "tBodyAccJerk.mean...X"            "tBodyAccJerk.mean...Y"                                   "tBodyAccJerk.mean...Z"               
 "tBodyAccJerk.std...X"             "tBodyAccJerk.std...Y"                                       "tBodyAccJerk.std...Z"                 

Triaxial Body Angular  Acceleration Means and Standard deviation
"tBodyGyro.mean...X"       	"tBodyGyro.mean...Y"       "tBodyGyro.mean...Z"                   "tBodyGyro.std...X"           "tBodyGyro.std...Y"                                              "tBodyGyro.std...Z"    
                
Triaxial Body Angular  Jerk Means and Standard deviation
"tBodyGyroJerk.mean...X"   "tBodyGyroJerk.mean...Y"  "tBodyGyroJerk.mean...Z"               "tBodyGyroJerk.std...X""tBodyGyroJerk.std...Y                                   "tBodyGyroJerk.std...Z"     
           
Net Body  Linear  and Angular acceleration and   Jerk Means and Standard deviatio
"tBodyAccMag.mean        "tBodyAccMag.std.."         "tGravityAccMag.mean.."                "tGravityAccMag.std.." "tBodyAccJerkMag.mean.."       "tBodyAccJerkMag.std.."                "tBodyGyroMag.mean.."   "tBodyGyroMag.std.."        "tBodyGyroJerkMag.mean.."              "tBodyGyroJerkMag.std.."     

         
 Triaxial Body Acceleration Means and Standard deviation and Mean:Frequency Domain
"fBodyAcc.mean...X"                 	      "fBodyAcc.mean...Y"              	    	     "fBodyAcc.mean...Z"                   
 "fBodyAcc.std...X"                   	     "fBodyAcc.std...Y"                	   	      "fBodyAcc.std...Z"                           fBodyAcc.meanFreq...X"                "fBodyAcc.meanFreq...Y"                      "fBodyAcc.meanFreq...Z"  
 
Triaxial Body Acceleration Jerk Means and Standard deviation and Mean:Frequency Domain
"fBodyAccJerk.mean...X"                "fBodyAccJerk.mean...Y"                                "fBodyAccJerk.mean...Z"               
 "fBodyAccJerk.std...X"                "fBodyAccJerk.std...Y"                                      "fBodyAccJerk.std...Z"                 "fBodyAccJerk.meanFreq...X"         "fBodyAccJerk.meanFreq...Y"               "fBodyAccJerk.meanFreq...Z"           

Triaxial Body  Angular Acceleration Means, Standard deviation:Frequency Domain
"fBodyGyro.mean...X"                      "fBodyGyro.mean...Y"                                     "fBodyGyro.mean...Z"                  
 "fBodyGyro.std...X"                          "fBodyGyro.std...Y"                                       "fBodyGyro.std...Z"                   
"fBodyGyro.meanFreq...X"               "fBodyGyro.meanFreq...Y"                       "fBodyGyro.meanFreq...Z"               

Triaxial Body Actual Linear/Angular  Acceleration and Standard deviation:Frequency Domain
"fBodyAccMag.mean.."                   "fBodyAccMag.std.."                    "fBodyAccMag.meanFreq.."              
 "fBodyBodyAccJerkMag.mean.."   fBodyBodyAccJerkMag.std.." "fBodyBodyAccJerkMag.meanFreq.."      "fBodyBodyGyroMag.mean.."  "fBodyBodyGyroMag.std.."               "fBodyBodyGyroMag.meanFreq.."          "fBodyBodyGyroJerkMag.mean."fBodyBodyGyroJerkMag.std." fBodyBodyGyroJerkMag.meanFreq.."  
 
 Body Angles based on Gravity and Gyroscopic Sensors and their Mean
"angle.tBodyAccMean.gravity."
 "angle.tBodyAccJerkMean..gravityMean
." angle.tBodyGyroMean.gravityMean."    
 "angle.tBodyGyroJerkMean.gravityMean."
 "angle.X.gravityMean."               
  "angle.Y.gravityMean."               
  "angle.Z.gravityMean."                
