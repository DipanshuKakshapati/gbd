# taking file name along with its type as an input from user
file_name = input('Enter a file name attached with their file type: ').lower()

# existing list of file types
file_types = ['.jpeg', '.png', '.h', '.c', '.py', '.txt']

# checking if the file_name starts with 'https://'
if file_name.startswith('http://'):
    print('\nURL starts with http://\n')

# checking if the file_name starts with 'https://'
elif file_name.startswith('https://'):
    print('\n URL starts with http://\n')

# in the case if it does not meet above conditions we assume it ends with a file type.
else:
    found_file_type = False # assinign the varaible a False value

    for file_type in file_types: # going through the list of file_types

        if file_name.endswith(file_type): # checking if the file_name endswith the file_types list
            print(f'\nIt is a {file_type} file\n')
            found_file_type = True # setting the variable value True if found the file type
            break # breaking out of the for loop since we have found the file type

    if not found_file_type: # if the variable found_file_type is still False

        if '.' in file_name: # checking even still the file name consists of a file type that does not exist in our file_types list
            print('\nFile type not recognized!\n')
        else: # if none of the above conditions are met we assume it does not contain a specified file type
            print('\nIt is a txt file.\n')
    

        