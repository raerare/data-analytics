
# I used simple variables, math formulas, loops, and if statements
# to solve the problem step by step.

# Description: This script tests various numeric conversion techniques
# Author: Sam Q. Newprogrammer

a = ' 101.1 '
b = '55'
c = '402 Stevens'
d = 'Number 5 '

# Original values and types
print(a, type(a))
print(b, type(b))
print(c, type(c))
print(d, type(d))

# int conversions
# a_int = int(a)  # ValueError: invalid literal for int() because the string contains a decimal.
b_int = int(b)
# c_int = int(c)  # ValueError: contains non-numeric text.
# d_int = int(d)  # ValueError: contains non-numeric text.

# float conversions
a_float = float(a)
b_float = float(b)
# c_float = float(c)  # ValueError: contains non-numeric text.
# d_float = float(d)  # ValueError: contains non-numeric text.

# float then integer for a
a_float_to_int = int(float(a))

# Slicing numeric portions
a_number = int(float(a[1:6]))
b_number = int(b[:2])
c_number = int(c[:3])
d_number = int(d[7:8])

print(a_float, type(a_float))
print(b_int, type(b_int))
print(b_float, type(b_float))
print(a_float_to_int, type(a_float_to_int))
print(a_number, type(a_number))
print(b_number, type(b_number))
print(c_number, type(c_number))
print(d_number, type(d_number))
print(a.strip())
print(d.strip())
# strip() removes leading and trailing spaces but does not remove inside spaces or letters.

