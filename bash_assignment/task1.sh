#!/bin/bash

# Aidan Dennehy R00145278
# Assignment 1 - bash script to inform of user activity
#

# Parameter supplied Function - will react for parameter entered
paramsupplied() {

  # Get username
  username=$(getent passwd $1 | cut -d ':' -f 1)

  # Get Full Name
  fullname=$(getent passwd $1 | cut -d ':' -f 5)

  # Get Login Count
  logincount=$(last | grep $1 | wc -l)

  # Get Last Login time and date
  lastlogin=$(last -1 -R $USER | head -1 | cut -c 20-)

  # Check to see if valid username passed
  if [ -z "$username" ]
    then

      # In here the parameter pass was not found in the password file
      echo "No entry exists for $1"
  else

    # The username was found in the password file and the details are printed to the screen
    echo "The full name for $1 is $fullname"
    echo "$1 has logged in $logincount times"
    echo "The last login details for $1 is $lastlogin"
  fi

}

# Function to print userlist in tabular form when no user passed as parameter 
paramnotsupplied() {
  who| awk '{print $1 "   " $3 "   " $4}' | sort -u
}


# Check to see if a parameter was passed
if [ $# -eq 0 ]
  then

    # Parameter was NOT passed when in this condition
    paramnotsupplied
else

    # Parameter was passed when in this condition
    paramsupplied $1
fi


