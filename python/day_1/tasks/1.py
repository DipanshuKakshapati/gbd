#defining a list containing integer numbers
num_list = [1, 8, 2, 23, 7, -4, 18, 23, 42, 37, 2]

print('Number list: \n', num_list)
#sorting the list using sorted
sorted_num_list = sorted(num_list)

#storing the smallest 3 numbers from the list in the smallest_three variable
smallest_three = sorted_num_list[:3]

#storing the largest 3 numbers from the list in the largest_three variable
largest_three = sorted_num_list[-3:]

print('\n')
print('Number list part: \n')

#printing the smallest three numbers in the list
print('Smallest three numbers in the list: ', smallest_three)
print('\n')

#printing the largest three numbers in the list
print('Largest three numbers in the list: ', largest_three)

print('\n')
print('Portfolio part: \n')
#we have a list of dictionary
portfolio = [
    {'name':'ABC', 'shares': 100, 'price': 91.1},
    {'name':'DEF', 'shares': 50, 'price': 543.22},
    {'name':'FB', 'shares': 200, 'price': 21.09},
    {'name':'ABC', 'shares': 300, 'price': 305}
]

#sorting the list of dictionary using sorted and attribute 'price'
portfolio_sorted = sorted(portfolio, key=lambda x:x['price'])

print('Sorted portfolio: \n', portfolio_sorted)
print('\n')
#taking first 3 smallest values from the sorted dictionary. Remember the list of dictionary is sorted on the basis of the attribute 'price.'
smallest_three_portfolios = portfolio_sorted[:3]

print('Three smallest portoflios: \n', smallest_three_portfolios)
print('\n')
#taking last 3 largest values from the sorted dictionary. Remember the list of dictionary is sorted on the basis of the attribute 'price.'
largest_three_portfolios = portfolio_sorted[-3:]

print('Threee largest portfolios: \n', largest_three_portfolios)
print('\n')

