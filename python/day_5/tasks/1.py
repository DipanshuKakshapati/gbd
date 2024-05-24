def append_to_file():
    # asking user for the input
    user_input = input("Enter text to append to the file: ")
    
    # opening the file in append mode
    with open("user_append_data.txt", "a") as file:

        # appending the user input to the file
        content_a = file.write(user_input + "\n")

    print("Data appended successfully in the file!")

# calling the function
append_to_file()