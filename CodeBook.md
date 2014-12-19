# The Code Book
Final output ([average_per_subject_and_activity.txt](https://github.com/cdsmax/getting_and_cleaning_data2/blob/master/average_per_subject_and_activity.txt)) is 180x68 matrix.  
The final output is the average of each std() and mean() column from the raw data, for each subject for each activity.  

### Columns
**1 - subject** - subject ID, 30 unique values, 1 to 30   
**2 - activity** - name of an activity performed by the subject, 6 unique values   

    Possible values:  
    LAYING  
    SITTING  
    STANDING  
    WALKING  
    WALKING_DOWNSTAIRS  
    WALKING_UPSTAIRS  

**3:68** - averages for the std() and mean() columns from the original data set.   
Example: "tBodyAcc-mean()-X", "tBodyAcc-std()-X", "tBodyAcc-mean()-Y", "tBodyAcc-std()-Y"   
These column names are same as in raw data, but represent an average accross all observations for that column for that subject for that activity.   

