
# I used simple variables, math formulas, loops, and if statements
# to solve the problem step by step.

bank_balance = 100.00
savings_goal = 500.00
weekly_savings = 75.00
treat_cost = 10.00
treat_taken = False

while bank_balance < savings_goal:
    bank_balance = bank_balance + weekly_savings

    if bank_balance >= savings_goal * 0.75 and not treat_taken:
        bank_balance = bank_balance - treat_cost
        treat_taken = True
        print(f'So close! After treating myself, my balance is up to {bank_balance:.2f}.')
    elif bank_balance > savings_goal / 2:
        print(f'Almost there! This week my balance is up to {bank_balance:.2f}.')
    else:
        print(f'This week my balance increased to {bank_balance:.2f}.')

print(f'Goal met! My current balance is {bank_balance:.2f}.')

