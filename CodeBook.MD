## Getting and Cleaning Data Project

### Before you run script

1. You should download file https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Unpack it
3. Change working directory to the place with unpacked files

### Output

You will get tidy.txt file as a result

### Running and understanding code

There is several steps in the script:

1. Reading data sets:

1.1 Reading trainin data set
1.2 Reading testing data set
1.3 Reading activities data set
1.4 Reading features data set

2. Standardizing captions

3. Merge training and test sets together

4. Get only the features on mean and std. dev.

5. filter data to leave only needed columns

6. Rename activity from numbers to names

7. Aggregating data

8. Writing result file
