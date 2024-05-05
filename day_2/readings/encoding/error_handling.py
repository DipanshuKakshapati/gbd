# Using replace to handle unknown characters
unknown_char = "This is a unicode string with emoji 😊"

encoded_with_error_handling = unknown_char.encode('ascii', errors='replace')

print(encoded_with_error_handling)  # Output: b'This is a unicode string with emoji ?'
