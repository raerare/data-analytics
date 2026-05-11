
# Notes:
# This script was completed for the Week 5 workbook.
# I used simple variables, math formulas, loops, and if statements
# to solve the problem step by step.

sales_data = [
    ('Marcus Webb', 'East', 4250.00),
    ('Priya Sharma', 'West', 5875.50),
    ('DeShawn Carter', 'East', 3100.75),
    ('LaTonya Rivers', 'South', 6420.00),
    ('Bob Nguyen', 'West', 4980.25),
]

total_sales = 0

for name, region, sales in sales_data:
    total_sales = total_sales + sales
    print(f'{name} ({region}): ${sales:,.2f}')
    if sales > 5000:
        print(' ^ Top performer!')

print(f'Overall total sales: ${total_sales:,.2f}')


# End Notes:
# I tested this script with different values to make sure it worked.
# I also used print statements to check my results.
