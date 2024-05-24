# Learning article: https://www.linkedin.com/pulse/tips-tricks-mastering-regex-best-practices-pitfalls-avoid-soni/

Metacharacters: These are characters with a special meaning:
. (dot) matches any single character except newline characters.
^ asserts position at start of a line.
$ asserts position at the end of a line.
* matches zero or more repetitions of the preceding element.
+ matches one or more repetitions of the preceding element.
? matches zero or one repetition of the preceding element.

Character Classes: These are sets of characters enclosed in square brackets and match any one character from the set. For example, [abc] will match any single 'a', 'b', or 'c'.

Ranges: Inside a character class, a hyphen (-) between two characters allows you to define a range of characters. For example, [a-z] matches any lowercase letter.

Escape Characters: The backslash (\) is used to escape metacharacters when you want to match them literally. For example, \. matches a period.

Groups and Capturing: Parentheses (()) are used to define groups, which treat multiple characters as a single unit, and can capture the text matched by those characters for later use. For example, (abc)+ matches one or more sequences of "abc".

Anchors
Anchors do not match characters. Instead, they match a position before, after, or between characters:

^ - Start of a string or start of a line in multiline mode
$ - End of a string or end of a line in multiline mode
\b - Word boundary


Example:
import re

text = "The quick brown fox jumps over the lazy dog"
# Find all occurrences of 'o' followed by any character
matches = re.findall(r'o.', text)
print(matches)  # Output: ['ow', 'ox', 'ov', 'og']

# Check if the string starts with 'The'
starts_with_the = re.match(r'^The', text)
print(bool(starts_with_the))  # Output: True

# Replace all whitespace with a hyphen
replaced_text = re.sub(r'\s', '-', text)
print(replaced_text)  # Output: The-quick-brown-fox-jumps-over-the-lazy-dog
