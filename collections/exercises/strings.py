# ---- Exercise 2: Bracket Notation Basics ----

text = 'Strings_are_sequences_of_characters.'
word = 'tomato'

# 1. Print a slice of the first 12 characters from 'text'.
print(f"First 12 chars: {text[:12]}") 
# Strings_are_

# 2. Print a slice of the last 12 characters from 'text'. You should NOT have to count the index values yourself!
print(f"Last 12 chars: {text[-12:]}") 
# _characters.

# 3. Print a slice of the middle 12 characters from 'text'.
start_index = (len(text) - 12) // 2
end_index = start_index + 12
print(f"Middle 12 chars: {text[start_index:end_index]}")
# sequences_of

# ---- Exercise 3: Looping Through a String ----

# Use index values to loop backwards through 'word'.

# 1. Print 1 letter per line.
for i in range(len(word) - 1, -1, -1):
    print(word[i])
# o
# t
# a
# m
# o
# t

# 2. Refactor the code to use the accumulator pattern to build up and print the reversed string. For example, if given 'good', print 'doog' on one line.
reversed_word = ''
for i in range(len(word) - 1, -1, -1):
    reversed_word += word[i]
print(f"Reversed string: {reversed_word}")
#otamot

# 3. Refactor the code to print a combination of the original and reversed string. For example, given 'tomato', print 'tomatootamot'. (If you want to be fancy, print 'tomato | otamot').
simple_combination = word + reversed_word
print(f"Simple Combination: {simple_combination}")
# tomatootamot