# Task 1
# Aidan Dennehy R00145278
# This program has 3 functions:
# findMax - accepts parameter list and returns the maximum value therein
# findMin - accepts parameter list and returns the minimum value therein
# replList - accepts parameter list, replicates 3 times and prints odd numbers
#
# 
# Build a list of 12 random numbers between them
# Present a menu to point to the functions
# e - to exit

# Random imported
import random

# Function to return the maximum number in the passed list
def findMax(aList):
    maxNum = 0;
    for mxy in aList:
        if mxy>maxNum:
            maxNum = mxy
    
    return maxNum

# Function to find the minimum number in the passed list
def findMin(aList):
    minNum = 99999
    for mny in aList:
        if mny<minNum:
            minNum = mny
    return minNum

# Function to replicate the passed list and print the odd numbers 
def replList(aList):
    print("The length of the replicated list is " + str(len((aList*3))))
    #Q: do I output the odd nums of the new list?
    print("The odd numbers are . . .")
    for x in aList:
        if x%2!=0:
            print(x)
    return aList*3

# Enter the first number - validate that decimal number is entered
while True:
    print("Enter the first number:- ")
    num1=input()
    if num1.isdecimal():
        break
    print("Incorrect Input")

# Enter the second number - validate decimal and must be 12 larger than first number
while True:
    print("Enter the second number (must be 12 greater than first number):- ")
    num2=input()
    if num2.isdecimal():
        if (int(num2)-int(num1))>12:
            break
    print("Incorrect Input")

# build a list of random numbers between the two entered numbers
numRange = random.sample(range(int(num1), int(num2)),12)

# Present the menu
while True:
    print("The list is :- " + str(numRange))
    print("""
    b)    Find maximum number
    s)    Find minimum number
    [num] repl list
    e)    Exit
    """)
    # accept input 
    optionSelected = input()
    if optionSelected.upper() == "B":
        print("Maximum number is :- " + str(findMax(numRange)))
    elif optionSelected.upper() == "S":
        print("Minimum number is :- " + str(findMin(numRange)))
    elif optionSelected.isdecimal():
        print("Number selected")
        replList(numRange)
    elif optionSelected.upper() == "E":
        print("Thank you and goodbye")
        break
    else:
        print("Please enter a number or any of b,s,e")



        
