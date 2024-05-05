# open an image file in binary mode
with open("example.png", "rb") as file:
    image_data = file.read()

print(type(image_data))  # <class 'bytes'>
print(image_data[:20])   # Output the first 20 bytes of the image file

# writing bytes to a new file
with open("copy_of_example.png", "wb") as file:
    file.write(image_data)
