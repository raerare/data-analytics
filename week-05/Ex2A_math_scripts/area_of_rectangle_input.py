
# I used simple variables, math formulas, loops, and if statements
# to solve the problem step by step.

side_a = float(input('What is the length of the first side? '))
side_b = float(input('What is the length of the second side? '))
area = side_a * side_b

print(f'Side A is {side_a}')
print(f'Side B is {side_b}')
print(f'The area of the rectangle is {area}')
# Pitfall: input() returns text, so numeric input must be converted with float() or int().
# Pitfall: non-numeric input causes a ValueError when float() tries to convert it.

