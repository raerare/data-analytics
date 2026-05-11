
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

