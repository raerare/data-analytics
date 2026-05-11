
# Notes:
# This script was completed for the Week 5 workbook.
# I used simple variables, math formulas, loops, and if statements
# to solve the problem step by step.

pay_rate = 17.30
hours_worked = 45

if hours_worked > 40:
    regular_pay = 40 * pay_rate
    overtime_hours = hours_worked - 40
    overtime_pay = overtime_hours * pay_rate * 1.5
    gross_pay = regular_pay + overtime_pay
else:
    gross_pay = hours_worked * pay_rate

print(f'Gross pay is ${gross_pay:.2f}')


# End Notes:
# I tested this script with different values to make sure it worked.
# I also used print statements to check my results.
