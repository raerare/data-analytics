
# Notes:
# This script was completed for the Week 5 workbook.
# I used simple variables, math formulas, loops, and if statements
# to solve the problem step by step.

name_1 = 'PRIYA SHARMA'
name_2 = 'bob NGUYEN'
name_3 = 'LaTonya Williams'
salary_1 = '$82,500'
salary_2 = '$74,000'

print(name_1.lower())
print(name_2.lower())
print(name_3.lower())

print(name_1.title())
print(name_2.title())
print(name_3.title())

salary_1_no_dollar = salary_1.replace('$', '')
salary_2_no_dollar = salary_2.replace('$', '')
print(salary_1_no_dollar)
print(salary_2_no_dollar)
print(type(salary_1_no_dollar))
# These values are still strings. To perform math, remove commas and convert them to integers or floats.

salary_1_clean = int(salary_1.replace('$', '').replace(',', ''))
print(salary_1_clean)
print(type(salary_1_clean))


# End Notes:
# I tested this script with different values to make sure it worked.
# I also used print statements to check my results.
