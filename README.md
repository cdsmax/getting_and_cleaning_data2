# Data analysis of human physical activity as measured by the accelerometers from the Samsung Galaxy S smartphone

#### Contains R code to clean up the activity monitor data set from [UCI](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

#### Raw data: [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Functionality
[run_analysis.R](https://github.com/cdsmax/getting_and_cleaning_data2/blob/master/run_analysis.R) contains the R code to do the following:   

Merge all training and testing data into 3 new data sets (X, Y, subject) (locally stored as [UCI HAR Dataset](https://github.com/cdsmax/getting_and_cleaning_data2/tree/master/UCI%20HAR%20Dataset))   
   
Create one data set from 3 previous sets for standard deviations and means of all measurements, with descriptive variable and column names  
   
Create a new summary data set with the averages for each column from the combined set in the step above (locally stored as [average_per_subject_and_activity.txt](https://github.com/cdsmax/getting_and_cleaning_data2/blob/master/average_per_subject_and_activity.txt)  
