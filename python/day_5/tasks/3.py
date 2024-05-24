# Merge Multiple Text Files into One
# function to merge list of files in a single file
def merge_files(file_lists, merge_in_file):

    with open (merge_in_file, 'w') as out_file: # opening the output file

        for file in file_lists: # accesing files in the list

            with open (file) as in_file: # opening the file

                out_file.write(f"Content of file: {file}") # message to seperate contents of different files
                out_file.write('\n')

                for line in in_file: # reading lines and writing it on the output file

                    out_file.write(line)

                out_file.write('\n')

# list of files to merge
file_lists = ['a_file_to_merge.txt' , 'b_file_to_merge.txt', 'c_file_to_merge.txt']
merge_in_file = 'merged_files.txt' # file where the contents of the files in the list will be merged 

merge_files(file_lists, merge_in_file) # calling the function to merge files



# Creating a file with 450 lines
# funciton to write 450 lines in a file
def create_file(file, total_lines):

    with open(file, 'w') as in_file:
        for i in range (1, total_lines+1):
            in_file.write(f"Line {i}: Example text for line {i}\n")

create_file('450_line_file.txt', 450)



# Split a Large File into Smaller Files Based on Line Count
# function to divide a large file into smaller files based on line_breal
def break_file(large_file, line_break):

    with open (large_file, 'r') as file: # opening the large_file in read mode.
        
        lines = file.readlines() # reading all the lines in file.

    # For example, if lines_break is 100 and the large_file has 450 lines, i will take values 0, 100, 200, 300, 400.
    for i in range (0, len(lines), line_break): # starting from 0 till the lenght of the lines in the large_file.

        with open(f"{large_file}_part{i//line_break + 1}.txt", 'w') as file: # creating file with the name of existing i value
            file.writelines(lines[i:i+line_break]) # writing only 100 lines

# 100 lines per file, and a large file to divide is '450_line_file.txt'
break_file('450_line_file.txt', 100)