#Create file to download zip file

if (!file.exists("cleaningdata.zip")){
  file.create("cleaningdata.zip")
  }

#Download and unzip the file into the working directory.

url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'

download.file (url, destfile = 'cleaningdata.zip')

unzip ('cleaningdata.zip')

#Store the data from the zip files into variables

subject_test <- read.table ('UCI HAR Dataset\\test\\subject_test.txt')

X_test <- read.table ('UCI HAR Dataset\\test\\X_test.txt')

y_test <- read.table ('UCI HAR Dataset\\test\\y_test.txt')

subject_train <- read.table ('UCI HAR Dataset\\train\\subject_train.txt')

X_train <- read.table ('UCI HAR Dataset\\train\\X_train.txt')

y_train <- read.table ('UCI HAR Dataset\\train\\y_train.txt')

activity_labels <- read.table ('UCI HAR Dataset\\activity_labels.txt')

#Create column names for the dataframe

column_names <- read.table ('UCI HAR Dataset\\features.txt')
column_names <- column_names[ ,2]
column_names <- as.vector (column_names)
column_names <- c('subject', 'activity', column_names)

#Combine the X, Y, and subject rows together for the dataframe

X <- rbind (X_train, X_test)

Y <- rbind (y_train, y_test)

subject <- rbind (subject_train, subject_test)

#Combine the subject, Y, and X rows to create the dataframe

whole <- cbind (subject, Y, X)

#Add Column Names to the dataframe

colnames(whole) <- as.character(column_names)

#Clean the Data by filtering column names for mean and std, labeling activities, 
#and finding the mean of each activity by subject.
library (dplyr)

whole <- whole %>% 
  select(contains ("subject") | contains ("activity") | contains ("mean") | contains ("std")) %>% 
  select (!contains ("angle")) %>% 
  select (!contains ("Freq"))  %>%
  mutate(activity=ifelse(activity == 5,"Standing", activity),
         activity=ifelse(activity == 1,"Walking", activity),
         activity=ifelse(activity == 2,"Walking_Upstairs", activity),
         activity=ifelse(activity == 3,"Walking_Downstairs", activity),
         activity=ifelse(activity == 4,"Sitting", activity),
         activity=ifelse(activity == 6,"Laying", activity)) %>%
  group_by(activity,subject) %>% 
  summarise_each(funs(mean)) %>%
  arrange (subject)

#Arrange the columns in the dataframe so subject is first

newcolumnnames <- names(whole)[3:68]

whole <- select (whole, subject, activity, all_of(newcolumnnames))

#Remove characters out of the column names

names(whole) <- gsub("()-", "", names(whole), fixed = TRUE)

names(whole) <- gsub("()", "", names(whole), fixed = TRUE)

#Export to .txt file

write.table(whole, "tidydataset.txt", row.names = FALSE)

