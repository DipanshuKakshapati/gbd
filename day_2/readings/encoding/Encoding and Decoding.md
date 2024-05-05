# Encoding

### 1. Converting a string into a specific format or bytes representation. 
### 2. Python strings are in Unicode.
### 3. When we need to store them in a file, send them over a network, or do any other operation that requires a byte-format, we need to convert them using an encoding format. 
### 4. UTF-8 is the most commonly used encoding format.

# Decoding

### 1. Decoding is the reverse process where the bytes are converted back to string.
### 2. We do this when we receive data in bytes format and need to convert it in the original form.

# Common Use Cases

### 1. File Handling: When reading from or writing to files, especially if they contain non-ASCII characters.
### 2. Network Communication: Data sent over the network is typically in bytes, so encoding and decoding are crucial.
### 3. Data Storage: Databases might store data in specific encoding formats.

# Handling Errors

### 1. ignore: Ignores characters that can't be encoded/decoded.
### 2. replace: Replaces problematic characters with a placeholder (often ? for decoding).
### 3. strict: Raises a UnicodeDecodeError or UnicodeEncodeError.