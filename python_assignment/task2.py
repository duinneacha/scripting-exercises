# Task 2
# Aidan Dennehy R00145278
# This program asks for a number to be inputted - processes in the
# reducer function until the number equals 1
# Each time the number is passed to reducer it is outputted to the console

# reducer accepts number - if even divides by 2. If odd multipply by 3 and add 1
def reducer(number):
    if number % 2 == 0:
        return int(number/2)
    else:
        return number*3+1

# Ask the user to enter a number - validate for decimal
while True:
    print("Enter a number:- ")
    stringNumToProcess=input()
    if stringNumToProcess.isdecimal():
        break
    print("Incorrect Input")



# convert number entered to int
intNumToProcess = int(stringNumToProcess)

# call reducer until number equals 1
while True:
    if intNumToProcess == 1:
        break
    intNumToProcess = reducer(intNumToProcess)
    print(intNumToProcess)


    

