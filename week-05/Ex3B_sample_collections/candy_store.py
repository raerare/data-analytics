
# I used simple variables, math formulas, loops, and if statements
# to solve the problem step by step.

candies = ('gummies', 'lollipops', 'taffy')
flavors = ('mango', 'watermelon', 'blue raspberry')

candy_combinations = {
    candies[0] + ' - ' + flavors[1],
    candies[1] + ' - ' + flavors[2],
    candies[2] + ' - ' + flavors[0],
}

print("Today's candy options include:")
print(candy_combinations)
# Sets do not guarantee the order of items, so the output order may change.

