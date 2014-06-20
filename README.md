README
========================================================

The data set made available through this repo contains data gathered by the accelerometers in subjects cell phones while they engaged in activities from laying down to walking up stairs.  It is a restructuring of an original data set made available
as:

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit<E0> degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

This repo contains 4 files:
* a README.md file
* a CodeBook.md file that describes the data, variables, and processes 
leading to the reshaped data
* a tidy_measurement_means_by_activity_and_subject.txt file which contains
mean values over each activity and each subject for the mean and stdev 
measurements in the original dataset
* and, an R script, run_analysis.R which perofrms performs the operations and
calculations needed to read, parse, reshape, transform, and rewrite the data. This script can be sourced into R to generate the 2 result data sets.

Additional information about the underlying data can be found in the original
contributor's documentation, available here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Their data can also be downloaded from here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Please note and make reference to the orignal contributor's work in consuming
this data:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
