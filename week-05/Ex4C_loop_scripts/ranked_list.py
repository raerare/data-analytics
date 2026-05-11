
# Notes:
# This script was completed for the Week 5 workbook.
# I used simple variables, math formulas, loops, and if statements
# to solve the problem step by step.

foods = ['tacos', 'ramen', 'jerk chicken', 'injera', 'pierogi']

for index, food in enumerate(foods, start=1):
    if index == 1:
        print(f'{index}. {food} <- top pick!')
    else:
        print(f'{index}. {food}')

print('\nReverse order:')
for index, food in enumerate(reversed(foods), start=1):
    print(f'{index}. {food}')


# End Notes:
# I tested this script with different values to make sure it worked.
# I also used print statements to check my results.
