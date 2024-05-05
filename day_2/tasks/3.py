import re

# a sample text
text = '''Some text before the comment
* this is a
multiline comment *
Some text after the comment'''

# regular expression to find multiline comments
pattern = r'/\*.*?\*/'

# using re.DOTALL to make '.' match newlines
matches = re.findall(pattern, text, re.DOTALL)

# printing matches
if matches:
    for match in matches:
        print(match)
else:
    print('\nNo mathces found\n')

    