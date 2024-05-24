# a funciton to store the key of items alongside their occurance in the sequence as a value
def count_freq_seq(sequence_item):

    counts = {} # declaring an empty dictionary

    for item in sequence_item: # going through each and every item in the sequence_item

        if item in counts: # checking if the item is already in the counts dictionary
            counts[item] = counts[item] + 1 # if it already exists then we increase it's value by 1
        else: # if it does not exist
            counts[item] = 1 # we then increase it's value by 1 

    max_count_values = max(counts.values()) # storing the max value from the counts dictionary

    for item, count in counts.items(): # going through all the items in the counts dictonary
        if count == max_count_values: # a condition to see which key's value matches with the max_count_values in the counts dictionary
            the_item = item

    return the_item, max_count_values

# a sequence_item containing names of the fruits
sequence_item = {'apple','banana','watermelon','grapes','apple','banana','apple'}

# storing the maximum frequency value and name of the key (fruit) from the function
item, frequency = count_freq_seq(sequence_item)

print(f"The most frequent item is: {item} with {frequency} occurrence.")
