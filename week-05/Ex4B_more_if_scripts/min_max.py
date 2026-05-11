
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

