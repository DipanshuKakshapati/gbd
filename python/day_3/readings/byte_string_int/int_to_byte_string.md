# sample integer to convert
int_value = 16909060

# convert integer to byte string (assuming big-endian byte order)
byte_data = int_value.to_bytes(length, byteorder, signed)

Here:
1. length: It specifies the number of bytes to use for the representation.

2. byteorder: This argument specifies the order in which bytes are arranged to represent the integer value. There are two options:

    - 'big' (big-endian):
    The most significant byte (MSB) is at the beginning of the byte array. This means the first byte is the highest order byte.
    - 'little' (little-endian):
    The least significant byte (LSB) is at the beginning of the byte array. Here, the first byte is the lowest order byte.

3. signed integer: 
This is a boolean flag that indicates whether the bytes represent a signed integer. By default, it is set to False, meaning the bytes are interpreted as an unsigned integer. If set to True, the bytes are treated as a signed integer using two's complement notation.Indicates whether the bytes represent a signed integer.

