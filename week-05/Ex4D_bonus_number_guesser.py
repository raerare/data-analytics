
# I used simple variables, math formulas, loops, and if statements
# to solve the problem step by step.

# Bonus Project: Number Guesser
numbers = list(range(1, 21))
number_set = set(numbers)
randomized_numbers = sorted(number_set, key=lambda x: (x * 7) % 13)
secret_number = randomized_numbers[0]

guesses = []
print('Guess the secret number between 1 and 20.')

while True:
    user_input = input('Enter your guess: ')

    if not user_input.isdigit():
        print('Please enter a numeric guess.')
        continue

    guess = int(user_input)
    guesses.append(guess)

    if guess < secret_number:
        print('Higher')
    elif guess > secret_number:
        print('Lower')
    else:
        print('Correct!')
        break

print(f'You guessed the number in {len(guesses)} guesses.')
print(f'Your guesses were: {guesses}')

if len(guesses) < 5:
    print("You're awesome!")

