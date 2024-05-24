# importing needed library
import re

# asking user for the pattern they want to match

pattern = input("Enter the pattern you would like to search in the text: ")

# asking user for the content
text = input("Enter the content where you would like to search the pattern: ")

# checking if the content contains the matching pattern
match = re.search(pattern, text)

# if found the match enter the condition
if match:
    s = match.start()
    e = match.end()
    print(f'\nFound "{match.re.pattern}"\nin "{match.string}"\nfrom {s} to {e} ("{text[s:e]}")\n')

# if not match found enter the condition
else:
    print('\nNo Match Found\n')

