#!/bin/bash

# Aidan Dennehy R00145278
# Assignment 3 - bash script to insert a double space between eash line of a passed file
#


# AddDoubleSpace Function - Adds a space after every line
addDoubleSpace() {

  # Check to see if you have permission to read the file
  if [ -r $1 ]
  then

    # Set the name of the output file
    outputFile="task3"$1

   
    # This is one way the process could be carried out - output to screen in normal way (my understanding of task request)
    sed -e 'G;' $1 

    # using awk to output a blank line between each line of the input file
    awk '{print $0 "\n" }' $1 > $outputFile

    echo "Your file has been outputted to $outputFile"

  else
    echo "$1 is not readable - cannot continue"
    exit 1
  fi
}


# Check to see if a parameter was passed
if [ $# -eq 0 ]
  then

    # Parameter was NOT passed when in this condition
    echo "Proper usage is: ./task3.sh <filename>"

else

    # Parameter was passed when in this condition

    addDoubleSpace $1
fi


