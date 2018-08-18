# Task 3
# Aidan Dennehy R00145278
# adFunc - function that takes two parameters - a list and an int
#        - randomly eliminates x (int) items from the list
# This asks the user to enter a minium of 12 elements to a list, when they are
# finished entering at least 12 items, they type 'stop' to cease entering
# The user is then asked to enter a number between 2 and 9.
# Then athe function adFunc is called and first copies the list
# adFunc then randomly deletes items from positions 2 and 5 based on the
# paremeter (thich is the number entered by the user that was between 2 and 9)
# Finally the original list and the newly created tuple are printed to screen



# import random and copy
import random
import copy

# adFunc takes two parameters - list and int
def adFunc(aList, aNum):
    copyAList = copy.deepcopy(aList)
    # set the i variable to 0 for the control loop
    i=0
    
    # randomly delete elements from the list x(aNum) times
    while i<aNum:
        i+= 1
        indexToDelete = random.randint(2,5)    
        del copyAList[indexToDelete]

    # return the list as a tuple    
    return tuple(copyAList)
    

# initialise list and entered count
inputList=[]
enteredCount = 0
# populate list
while True:
    print("Enter items into a list (minimum 12 - currently entered :- ("+str(enteredCount)+") items")
    listElement = input()
    if listElement:
        enteredCount += 1
        inputList.append(listElement)
        if enteredCount >= 12:
            print("Minimun items entered - type 'stop' to exit input")
        if listElement=="stop":
            del inputList[-1]
            break        
        print(inputList)

# enter number of elements to remove from the list    
while True:
    print("Enter a number between 2 and 9")
    try:
        inputNumber = int(input())
        if 2 <= inputNumber <= 9:
            break
        else:
            raise ValueError()
    except ValueError:
        print("you must enter a number between 2 and 9")


# Assign the tuplie by calling adFunc
theTuple = adFunc(inputList, inputNumber)




print(theTuple)
print(inputList)

