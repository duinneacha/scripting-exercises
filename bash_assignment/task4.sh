#!/bin/bash

# Aidan Dennehy R00145278
# Assignment 4 - bash script to accept two numbers and perform various calculcations
#


# Multiplication Function - requires two numbers num1 num2
multiplyfunction () {
  echo "This is the multiply function"

  # Set variable to the multiple of the two numbers num1 and num2  
  mulans=$(($num1*$num2))

  # Output the answer to the multiplication
  echo "the answer of the multiplication ($num1 x $num2) is: $mulans"
}


# Addition function - requires two numbers num2 num2
addfunction () {
  echo "This is the add function"


  # Set variable to the sum of the two numbers num1 and num2
  addans=$(($num1+$num2))

  # Output the answer to the addition
  echo "the answer of the addition ($num1 + $num2) is: $addans"
}

# Third Function - will call either the multiplyfunction or the addfunction based on whether the second number
#                  is a multiple of 5 - requires two numbers num1 and num2
bothfunction () {
  echo "This is the both function"


  # Check to see if num1 is a multiple of 5
  if [ $(($num2%5)) -eq 0 ]
  then
    # In this condition - num2 is a multiple of 5 - therefore call the multiplyfunction
    echo "$num2 is a mod of 5"
    multiplyfunction $num1 $num2
  else
    # In this condition - num2 is NOT a multiple of 5 - therefore call the addfunction
    echo "$num2 is not a mod of 5"
    addfunction $num1 $num2
  fi

}

# Set the total runs
totalruns=4

# Perform this look $totalrun (4) times
for (( i=0 ; $i<$totalruns ; i=$i+1 ))
do

  if [ $i -eq "0" ]; then
    runvar="First"
  elif [ $i -eq "1" ]; then
    runvar="Second"
  elif [ $i -eq "2" ]; then
    runvar="Third"
  elif [ $i -eq "3" ]; then
    runvar="Fourth (last)"
  fi

  # Print header - indicating the run 
  echo ""
  echo "This is the $runvar run . . ."

  validnum='^[0-9]+$'

  # Validate num1 making sure it is a number
  while true
  do
    # Prompt for and read the first number
    echo -n "Please enter the first number :"; read num1

    # Validation condition
    if ! [[ $num1 =~ $validnum ]]
    then
      # Here num1 is invalid - try again
      echo "The number you entered is not valid - please try again"
    else
      # Here num1 is valid - exit the validation loop
      break
    fi
  done

  # Validate num2 making sure that it is a number
  while true
  do
    # Prompt for and read the second number
    echo -n "please enter the second number :"; read num2

    # Validation condition
    if ! [[ $num2 =~ $validnum ]]
    then

      # Here num2 is invalid - try again
      echo "The number you entered is not valid - please try again"
    else

      # Here num2 is valid - exit the validation loop
      break
    fi
  done

  # First call the multiplication function passing the entered numbers num1 and num2
  multiplyfunction $num1 $num2

  # Second call the addition function passing in the entered numbers num1 and num2
  addfunction $num1 $num2

  # Third call the both function passing in the entered numbers num1 and num2
  bothfunction $num1 $num2

done


