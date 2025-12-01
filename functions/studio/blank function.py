def reverse_characters(s):
    return s[::-1] 

list_test1 = ['apple', 'potato', 'Capitalized Words']


reversed_list = [reverse_characters(item) for item in list_test1[::-1]]

print(reversed_list)

