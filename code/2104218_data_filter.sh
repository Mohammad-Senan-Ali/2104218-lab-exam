#!/bin/bash

: '2104218 - Part - 3: CS102 - Lab Exam'

# Storing in the variable

# Storing the positional arguments as variables
fileName=$1
fieldName=$2
fieldValue=$3

# Naming the output file
outputname=${fileName:0:2}"_""$2""_""$3".csv

# Creating the output file
touch $outputname

# Counting the number of lines
lines=$(cat $1 | wc -l)

# For Question 9 part (a)
echo "File Name: $fileName, Field Name $2, Number of Lines: $lines" >> $outputname

# Adding Column headers
echo $(cat $1 | head -n1 ) >> $outputname

# Adding employee records
echo $(cat $1 | grep -i "$3") >> $outputname
