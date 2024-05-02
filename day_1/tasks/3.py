# creating a dictionary containing name and age group of respective people
dictionary = {
    'alex' : 18,
    'salmon' : 12,
    'harry' : 23,
    'garett' : 11,
    'maria' : 12,
    'bryan' : 19
}

print('\n')
print('This is the dictionary: ', dictionary)

max_value = max(dictionary.values()) # finding out the maximum value in the dictionary
min_value = min(dictionary.values()) # finding out the minimum value in the dictionary

max_key = max(dictionary.keys()) # finding the maxium key (highest in alphabetical order in the dictionary
min_key = min(dictionary.keys()) # finding the minimum key (lowest in alphabetical order in the dictionary

sort_dictionary_keys = sorted(dictionary.items()) # sorting the dictionary on the basis of key 
sort_dictionary_values = sorted(dictionary.items(), key = lambda item:item[1]) # sorting the dictionary on the basis of values

print('\n')
print('Max value in the dictionary is: ', max_value) 
print('Min value in the dictionary is: ', min_value)

print('\n')
print('Max key in the dictionary on the basis of alphabetical order is: ', max_key)
print('Min key in the dictionary on the basis of alphabetical order is: ', min_key)

print('\n')
print('Sorted dictionary on the basis of key (alphabetical order): ', sort_dictionary_keys)
print('Sorted dictionary on the basis of value: ', sort_dictionary_values)
print('\n')