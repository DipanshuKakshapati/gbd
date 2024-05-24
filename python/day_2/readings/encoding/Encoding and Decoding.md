# Encoding

 1. Converting a string into a specific format or bytes representation. 
 2. Python strings are in Unicode.
 3. When we need to store them in a file, send them over a network, or do any other operation that requires a byte-format, we need to convert them using an encoding format. 
 4. UTF-8 is the most commonly used encoding format: UTF-8 is a widely adopted encoding format and part of the Unicode standard. It is favored because it is backward compatible with ASCII (American Standard Code for Information Interchange) and can represent any character in the Unicode standard. UTF-8 is variable-width, meaning it uses one to four bytes per character, which makes it both space-efficient and universally applicable, as it covers all the characters and symbols used globally.

# Decoding

 1. Decoding is the reverse process where the bytes are converted back to string.
 2. We do this when we receive data in bytes format and need to convert it in the original form:
  For example, when a web server sends a page, it sends it as bytes, which the browser then decodes into characters to display it correctly to the user. Similarly, when reading text from a file saved in a particular encoding, your software must decode the bytes into strings using the same encoding format.

# Common Use Cases

 1. File Handling: When reading from or writing to files, especially if they contain non-ASCII characters.
 2. Network Communication: Data sent over the network is typically in bytes, so encoding and decoding are crucial.
 3. Data Storage: Databases might store data in specific encoding formats.

# Handling Errors

 1. ignore: Ignores characters that can't be encoded/decoded. Using the ignore error handler, Python will simply omit any characters that cannot be encoded or decoded. This can prevent errors from being raised, but it may lead to data loss as the problematic characters are excluded from the resulting string.
 2. replace: The replace error handler substitutes characters that cannot be encoded or decoded with a replacement character. For decoding, this is often the ? character, which indicates that the original character could not be interpreted within the specified encoding.
 3. strict: Raises a UnicodeDecodeError or UnicodeEncodeError. The strict mode is the default error handling scheme in Python for encoding and decoding. If any characters cannot be encoded or decoded, it raises a UnicodeEncodeError or UnicodeDecodeError, respectively. This mode ensures that you are immediately informed of any errors in your data, allowing you to handle them explicitly rather than silently modifying the data.


