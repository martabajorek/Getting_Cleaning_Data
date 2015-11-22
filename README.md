"run_analysis.R" file contains a script transforming raw data (as obtained from the https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip site and unziped to the working directory) into tidy data (as in the course_project_tidy_data.txt file).


I assumed you already have all the data on your own disk, in your working directory, in the original folder structure (just after unzipping). 
Therefore two lines at the beginning of the script - containing commands for downloading the data and unzipping it - are preceeded by # sign and will not run.
Similarly, the command write.table and the very end of the script is preceded by # sign and will not run - as I did not want to take any action on your disk.


All you need to do is copy the "run_analysis.R" script to your R working directory and introduce it with the command:

> source("run_analysis.R")

