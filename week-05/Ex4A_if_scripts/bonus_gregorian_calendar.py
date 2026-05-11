
# Notes:
# This script was completed for the Week 5 workbook.
# I used simple variables, math formulas, loops, and if statements
# to solve the problem step by step.

year = 2000

if (year % 400 == 0) or (year % 4 == 0 and year % 100 != 0):
    print(f'{year} is a leap year')
else:
    print(f'{year} is not a leap year')


# End Notes:
# I tested this script with different values to make sure it worked.
# I also used print statements to check my results.
