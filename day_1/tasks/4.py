# function to remove duplicates in a set
def remove_duplicates_in_set(sequence):

    result_sequence_set = set() # declaring an empty set for now

    # looping over the numbers in sequence set
    for item in sequence:
        
        if item not in result_sequence_set: # checking if the number is in the result_sequence or not
            result_sequence_set.add(item) # adding that number in the result_sequence_set

    return result_sequence_set

# a set containing duplicate values
sequence = {1, 2, 2, 3, 4, 4, 5, 6, 6}

# calling the remove_duplicates_in_set function to return a set with duplicates removed
unique_sequence_set = remove_duplicates_in_set(sequence)

print(unique_sequence_set)
