
# Notes:
# This script was completed for the Week 5 workbook.
# I used simple variables, math formulas, loops, and if statements
# to solve the problem step by step.

import math

length = 12
width = 10
tiles_per_box = 12
room_area = length * width
tiles_needed = room_area
extra_tiles = tiles_needed * 1.10
boxes_needed = math.ceil(extra_tiles / tiles_per_box)

print(f'Room area is {room_area} square feet')
print(f'Tiles needed with 10% extra: {math.ceil(extra_tiles)}')
print(f'Total boxes to buy: {boxes_needed}')


# End Notes:
# I tested this script with different values to make sure it worked.
# I also used print statements to check my results.
