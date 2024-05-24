# import needed libraries
import base64

# reading the original text file
with open('original_text.txt', 'r') as file:
    content = file.read()

# converting the content to bytes using johab encoding
content_bytes = content.encode('johab')

# encoding the bytes using Base64 to make it less directly readable
base64_encoded_content = base64.b64encode(content_bytes) #Base64 uses 6-bit characters grouped into 24-bit sequences.

# saving the Base64 encoded bytes to a new file
with open('encoded_bytes.txt', 'wb') as file:
    file.write(base64_encoded_content)

# reading the Base64 encoded bytes from the new file
with open('encoded_bytes.txt', 'rb') as file:
    base64_data = file.read()

# decoding the Base64 encoded bytes back to johab bytes
decoded_bytes = base64.b64decode(base64_data)

# decoding the johab bytes back to a string
decoded_content = decoded_bytes.decode('johab')

# printing the original text
print(decoded_content)
