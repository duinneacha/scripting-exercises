#!/bin/bash

# Aidan Dennehy R00145278
# Assignment 2 - bash script to create and then delete a range of files based on file size
#


# Function called if no parameter passed to the script
noparam() {
  echo "Proper usage is : "
  echo "./task2.sh <folder to search and process>"
}


# Function called when parameter passed
fprocess() {

  # Find all files greated than 2kb and store to variable files
  files=$(find $1 -type f -size +2k)

  # Loop through all files greater than 2kb
  for t in $files
  do
    echo "processing $t file!!!!"
    
    # For each file only accept d or c as valid answers
    while true
      do

        # Echo the current file
        echo "$t"

        # Ask the question
        echo "Do you wish to delete (d) or copy (c) this file?"
        echo -n "Please enter d or c : "; read ans
        
        # Condition if c or C is chosen (Copy)
        if [ $ans = "c" ] || [ $ans = "C" ]
          then
            echo "Copying file $t"

            # Copy file to a folder called copyfolder
            cp $t copyfolder

            # Exit loop
            break
        fi

        # Condition if d or D is chosen (Delete)
        if [ $ans = "d" ] || [ $ans = "D" ]
          then
            echo "deleting file $t"

            # Delete the file
            rm $t

            # Log deleted file to log file
            echo $(date) $t >> deletedfiles.txt

            # Exit loop
            break
        fi

     done 
  done

}



# Check to see if a parameter was passed
if [ $# -eq 0 ]
  then

    # Parameter was NOT passed when in this condition
    noparam
else

    # Parameter was passed when in this condition
    fprocess $1
fi



