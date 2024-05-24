# assuming a sample byte data
bytes_data = b'\x01\x02\x03\x80'

# using byte_order = 'big' and signed_values = 'True'
int_bytes_1 = int.from_bytes(bytes_data, 'big', signed = True)

# using byte_order = 'big' and signed_values = 'False'
int_bytes_2 = int.from_bytes(bytes_data, 'big', signed = False)

# using byte_order = 'little' and signed_values = 'True'
int_bytes_3 = int.from_bytes(bytes_data, 'little', signed = True)

# using byte_order = 'little' and signed_values = 'False'
int_bytes_4 = int.from_bytes(bytes_data, 'little', signed = False)

print(f"When byte order is 'big' and signed is 'True' the int value is {int_bytes_1}") # Output will be 16909184
print(f"When byte order is 'big' and signed is 'False' the int value is {int_bytes_2}") # Output will be 16909184
print(f"When byte order is 'little' and signed is 'True' the int value is {int_bytes_3}") # Output will be -2147286527
print(f"When byte order is 'little' and signed is 'False' the int value is {int_bytes_4}") # Output will be 2147680769


# sample integer to convert
int_value = 16909060

# converting integer to byte string (assuming big-endian byte order)
byte_data = int_value.to_bytes(4, 'big')
print(byte_data)  # Output will be b'\x01\x02\x03\x04'
