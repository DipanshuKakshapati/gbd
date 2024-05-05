#importing needed libraries
import re

# asking user for the content 
text = input('Enter the content where you would like to search the pattern: ')

# regular expression to find text within double quotes
pattern = r'"(.*?)"'

# finding all the cases where the pattern is found in text
matches = re.findall(pattern, text)

# checking if any match is found 
if matches:
    print('\nFound the following matches:')

    for match in matches: # iterating over all the matches
        print(match)

# in case if no match is found       
else:
    print('\nNo Match Found\n')
