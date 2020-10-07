# README

## Repository

This repository contains the following files:

  1. Codebook.md 
  
  2. run_analysis.R
  
  3. README.md
  
  4. tidydataset.txt

## Steps by run_analysis.R

The data is from the Human Activity Recognition Using Smartphones Data Set.  The R file run_analysis.R were used to create the tidy dataset from multiple files.  The file run_analysis.R take the following steps to clean the data.

  1. Download and unzip the file into the working directory.
  
  2. Store the data from the zip files into variables.
  
  3. Combines the subject, Y, and X rows from the train and test set to create the dataframe.
  
  4. Add Column Names to the dataframe using names from features.txt.
  
  5. Apply dyplyr and clean the data by filtering column names for mean and std, labeling activities, and finding the mean of each activity by subject.
  
  6. Switch the activities and subject column.
  
  7. Remove characters ( ()- and ()) out of the column names.
  
  8.Export to .txt format.