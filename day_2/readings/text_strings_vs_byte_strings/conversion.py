# converting from text to bytes
original_text = "Hello, byte world!"
text_to_bytes = original_text.encode('utf-8')  # encoding text to bytes using UTF-8 encoding

print(type(text_to_bytes))  # <class 'bytes'>
print(text_to_bytes)        # Output: b'Hello, byte world!'

# converting from bytes to text
bytes_to_text = text_to_bytes.decode('utf-8')  # decoding bytes back to text

print(type(bytes_to_text))  # <class 'str'>
print(bytes_to_text)        # Output: Hello, byte world!
