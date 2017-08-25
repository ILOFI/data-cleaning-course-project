# Getting and Cleaning Data Course Project

## Introduction

This repo contains my work for Course Project of **Getting and Cleaning Data**, one of the **Data Science Specialize Course** in Coursera.

### Goal

One of the most exciting areas in all of data science right now is wearable computing - see for example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

[Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The goal is to prepare tidy data that can be used for later analysis. 

### Files of the repo

In this project, you will find:

- `README.md` -  explains how all of the scripts work and how they are connected.
- `CodeBook.md` - describes the variables, the data, and any transformations or work that performed to clean up the data.
- `tidy.txt` - the cleaned data extracted from the original data using `run_analysis.R`
- `features.txt` - the complete list of variables in `tidy.txt`.
- `run_analysis.R` - the R code to that read in the original dataset and create a tidy dataset.

## Getting Started

### Basic Assumption

`run_analysis.R` assumes that original data is downloaded and unzipped in the folder `UCI HAR Dataset/` at R Working Directory.

This code works well at the version of `R version 3.4.1 (2017-06-30)`.

### Run the code

Make sure to get original data at the right place and run `run_analysis.R` in RStudio.

This script will perform the following steps to get a tidy data:

0. Read necessary data.


1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

If no error occurs, you will get a file called `tidy.txt` , which is the required, tidy dataset.