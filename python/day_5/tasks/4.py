import zlib

# Program to compress a file using zlib

# function to compress a file using zlib
def compress_file(inp_file, out_file):

    with open (inp_file, 'rb') as file: # opening inp_file in the read byte format
        data = file.read()

        compressed_data = zlib.compress(data) # compressing the data using zlib

    with open (out_file, 'wb') as file: # opening out_file in the write byte format
        file.write(compressed_data) # writing the compressed data in the file

# calling the function to compress a file
compress_file('example.txt', 'example.txt.zlib')

# Program to decompress a file usign zlib

# function to decompress a file using zlib
def decompress_file(inp_file, out_file):

    with open (inp_file, 'rb') as file: # opening inp_file in the read byte format
        compressed_data = file.read()

        decompressed_data = zlib.decompress(compressed_data) # decompressing the data using zlib
    
    with open(out_file, 'wb') as file: # opening out_file in the write byte format
        file.write(decompressed_data) # writing the decompressed data in the file

# calling the function to decompress a file
decompress_file('example.txt.zlib', 'example.decompressed.txt')

