
# I used simple variables, math formulas, loops, and if statements
# to solve the problem step by step.

current_savings = 1500.00
interest_rate = 0.06
doubled_balance = current_savings * 2
years_to_double = 72 / (interest_rate * 100)

print(f'Your current savings is {current_savings:.2f}.')
print(f'At a {format(interest_rate, ".0%")} interest rate, your savings account will be worth {format(doubled_balance, ".2f")} in {format(years_to_double, ".1f")} years')

