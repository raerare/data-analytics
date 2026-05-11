
# Notes:
# This script was completed for the Week 5 workbook.
# I used simple variables, math formulas, loops, and if statements
# to solve the problem step by step.

a = 18
b = 7
c = 24

if a <= b and a <= c:
    smallest = a
elif b <= a and b <= c:
    smallest = b
else:
    smallest = c

if a >= b and a >= c:
    largest = a
elif b >= a and b >= c:
    largest = b
else:
    largest = c

print(f'The smallest number is {smallest}')
print(f'The largest number is {largest}')


# End Notes:
# I tested this script with different values to make sure it worked.
# I also used print statements to check my results.
