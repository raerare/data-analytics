
# I used simple variables, math formulas, loops, and if statements
# to solve the problem step by step.

# Define known values
food_cost = 79.25
tax = 6.54
tip = 12.00

# Calculate the unknown
total_due = food_cost + tax + tip

# str() converts the numeric total_due value into text so it can be joined to another string.
# print('The total due is ' + str(total_due))

print('Food cost is ' + str(food_cost) + ' and tax is ' + str(tax))
# print('Tip is ' + str(tip))
print('Tip is ' + format(tip, '.2f'))
print('Total due is ' + str(total_due))

