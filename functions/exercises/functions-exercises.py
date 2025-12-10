# Part 1 A -- Make a Line
def make_line(size):
    return '#' * size


# Part 1 B -- Make a Square
# create a function using your make_line function to code a square
def make_square(size):
   return make_rectangle(size, size)




# Part 1 C -- Make a Rectangle
def make_rectangle(width, height):
    line = make_line(width)

    rectangle_rows = [line for i in range(height)]
    return '\n'.join(rectangle_rows)




# Part 2 A -- Make a Stairs
def make_downward_stairs(height):
    stair_rows = []
   
    for i in range(1, height + 1):
        stair_rows.append(make_line(i))
    
    return '\n'.join(stair_rows)
                     

# Part 2 B -- Make Space-Line 
def make_space_line(numSpaces, numChars):

    spaces = ' ' * numSpaces
    chars = make_line(numChars)
    
    return spaces + chars + spaces

# Part 2 C -- Make Isosceles Triangle
def make_isosceles_triangle(height):
    triangle_rows = []
    for i in range(height):
        numSpaces = height - i - 1
        numChars = 2 * i + 1
        
        line = make_space_line(numSpaces, numChars)
        triangle_rows.append(line)
        
    return '\n'.join(triangle_rows)


# Part 3 -- Make a Diamond
def make_diamond(height):
    top_half_string = make_isosceles_triangle(height)
    
    top_half_rows = top_half_string.split('\n')
    
    bottom_half_rows = top_half_rows[:-1][::-1]
    
    all_rows = top_half_rows + bottom_half_rows
    
    return '\n'.join(all_rows)






