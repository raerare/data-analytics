
# Notes:
# This script was completed for the Week 5 workbook.
# I used simple variables, math formulas, loops, and if statements
# to solve the problem step by step.

movies = ['Inception', 'Black Panther', 'The Matrix', 'Coco', 'Interstellar']

print(f'The list movies includes my top {len(movies)} favorite movies')
print(movies)

print(sorted(movies))
print(movies)
# sorted() displays a sorted copy but does not permanently change the original list.

movies.sort()
print(movies)
# .sort() changes the original list permanently.

movies.append('Spider-Man: Into the Spider-Verse')
print(f'The list movies now includes my top {len(movies)} favorite movies')
print(movies)


# End Notes:
# I tested this script with different values to make sure it worked.
# I also used print statements to check my results.
