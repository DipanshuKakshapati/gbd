# ignore
# Encoding a string with a special character not representable in ASCII
text = "Café"
encoded_text = text.encode('ascii', 'ignore')
print(encoded_text)  # b'Caf'

# Decoding a byte sequence that contains invalid bytes
bytes_sequence = b'Caf\xc3\xa9'
decoded_text = bytes_sequence.decode('ascii', 'ignore')
print(decoded_text)  # 'Caf'

# replace
# Using replace to handle unknown characters
unknown_char = "This is a unicode string with emoji 😊"
encoded_with_error_handling = unknown_char.encode('ascii', errors='replace')
print(encoded_with_error_handling)  # Output: b'This is a unicode string with emoji ?'

# Decoding a byte sequence that contains invalid bytes
bytes_sequence = b'Caf\xc3\xa9'
decoded_text = bytes_sequence.decode('ascii', 'replace')
print(decoded_text)  # 'Caf?'

#strict
# Encoding a string with a special character not representable in ASCII
text = "Café"
try:
    encoded_text = text.encode('ascii', 'strict')
except UnicodeEncodeError as e:
    print(f"Error: {e}")

# Decoding a byte sequence that contains invalid bytes
bytes_sequence = b'Caf\xc3\xa9'
try:
    decoded_text = bytes_sequence.decode('ascii', 'strict')
except UnicodeDecodeError as e:
    print(f"Error: {e}")
