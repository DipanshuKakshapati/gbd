# Text Strings

### A sequence of characters(letters, numbers, symbols) that are human redeable.
### Text strings are encoded in character encodings like UTF-8, UTF-16, ASCII, etc. These encodings map characters to byte representations.
### Used for text processing, manipulation, and storage where the content needs to be interpreted as text (e.g., reading and writing text files, processing user input, displaying messages).
### More suitable for displaying and storing text in a way that is meaningful for users.

# Byte Strings

### Represents data as a sequence of bytes.
### There is no character encoding associated with a bytes string as it deals directly with raw bytes. However, you can convert a text string to a bytes string using an encoding (e.g., text.encode('utf-8')).
### Each byte can store a number up to 255 (in most systems), making it suitable for binary data.
### Used for binary data processing such as image files, network data transfer, and any situation where exact byte-level control is necessary.
### Ideal for storage and transmission where the structure and interpretation of data don't necessarily conform to text rules, like sending and receiving raw data over a network.

