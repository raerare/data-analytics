
# I used simple variables, math formulas, loops, and if statements
# to solve the problem step by step.

import math

tourists = 38
van_capacity = 15
van_cost = 250.00

vans_needed = math.ceil(tourists / van_capacity)
total_cost = vans_needed * van_cost
cost_per_person = math.ceil((total_cost / tourists) * 100) / 100
amount_collected = cost_per_person * tourists
leftover = amount_collected - total_cost

print(f'Number of tourists: {tourists}')
print(f'Vans needed: {vans_needed}')
print(f'Total van rental cost: ${total_cost:.2f}')
print(f'Cost per person: ${cost_per_person:.2f}')
print(f'Amount collected: ${amount_collected:.2f}')
print(f'Leftover money: ${leftover:.2f}')
# There can be leftover money because the per-person charge is rounded up to full cents.

