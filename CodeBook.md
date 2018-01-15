# Resources

The data source used for this project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Instructions

1. Download the data set
2. Extract the files in your R working directory.
3. Set your working directory the folder named: UCI HAR Dataset
4. Load the script run_analysis.R
5. The tidy dataset will be created in the same directory.

# Script Functionality

1. First, it loads into variables the datasets contained in test and train folders. It creates one variable for each file.
2. Secondly, the script renames the column values with the features.txt file. It also assigns the Subject and Activity columns.
3. Thirly, the script concatenates the variables in one complete dataset.
4. It obtains the means and standard variation vectors and creates a new dataframes with these two measurements.
5. It creates the tidy dataset using the activity and subject column.
6. It writes the tidy txt file.
