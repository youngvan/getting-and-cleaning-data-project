## Getting and Cleaning Data Project

Repo for the submission of the course project for the Getting and Cleaning Data Course Project

student: Voytsekhovskyy Oleksandr

### Data links

Data source can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Description can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
General info can be found here: http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/

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

