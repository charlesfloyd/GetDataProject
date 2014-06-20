CodeBook
========================================================

The data in this dataset pertains to readings made by smartphone users' acceleromters while they participated in activities from laying down to walking up stairs.  The original data was contributed by:

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

It is available here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Their data can also be downloaded from here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The purpose of this data transformation was to make the data more accessible and to extract from it mean value data across the acitivities and subjects profiled.  Please see the original contributors documentation for a complete description of the methods and recordings which produced the original data.  This data set was constructed from that data as follows:

First the zip file containing the original data was downloaded, unzipped, and examined.  There were 2 datasets, one training set comprised of 70% of the measurement data and another test set comprised of the remaining data.  This dataset combines them into a single dataset.

The original data had separate files to indicate the values within a given row of readings, the activity to which a given row vector of readings pertained, and the subject to which a give row vector's reading pertained.  This dataset provides code for constructing 2 datasets, both internally indexed with measurement type, subject and activity information: 1 with a subset of the original data (those data representing means and standard deviations of measurements), and the other representing the average across both subjects and activities of the mean and standard deviation measurements which appear in the first data set.  The second dataset is also available within this repository.  Below are descriptions for the row and column names appearing in these datasets:



```r
summary(cars)
```

```
##      speed           dist    
##  Min.   : 4.0   Min.   :  2  
##  1st Qu.:12.0   1st Qu.: 26  
##  Median :15.0   Median : 36  
##  Mean   :15.4   Mean   : 43  
##  3rd Qu.:19.0   3rd Qu.: 56  
##  Max.   :25.0   Max.   :120
```

You can also embed plots, for example:


```r
plot(cars)
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 

