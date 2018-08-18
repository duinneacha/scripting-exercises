# Task 4
# Aidan Dennehy R00145278
#
# Function: wordFunction - accepts three parameters - sentence - word1 - word2
# replaces word1 with word2 as many times that appears in the sentence
#
#
# Task4 asks the user to enter a sentence., and two additional words.
# The first word entered should be a word that is in the sentence.
# the second word is a word that the user wishes to replace the first word
# in the sentence.
# When the sentence and two words are entered, the program calls the function
# and replaces word1 with word2 and displays the original sentence and the
# updated sentence


# Function - accepts sentence and two words
def wordFunction(sentence, w1, w2):

    # split the sentence into a list of words
    inputWordList = sentence.split()

    # set the output word list to blank
    outputWordList = []
    # Loop through the initial word list and replace word1 with word 2 if found
    for x in inputWordList:
        if x == w1:
            outputWordList.append(w2)
        else:
            outputWordList.append(x)
    # Return the outputed word list as one string separated by spaces.
    return " ".join(outputWordList)
    


#theSentence = "ABBA are releasing some new material which I am very excited about"
#word1 = "very"
#word2 = "extremely"

# Enter a sentence
while True:
    print("Enter a sentence")
    theSentence = input()
    if theSentence:
        break

# Enter the first word
while True:
    print("Enter the word to replace")
    word1 = input()
    if word1:
        break


# Enter the econd word
while True:
    print("Enter the replacment word")
    word2 = input()
    if word2:
        break


# Call the wordFunction that replaces word1 with word2 from theSentence
newSentence = wordFunction(theSentence, word1, word2)

# Print the original sentence and the new sentence
print(theSentence)
print(newSentence)
