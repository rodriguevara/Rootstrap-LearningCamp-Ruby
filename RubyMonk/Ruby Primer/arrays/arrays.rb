=begin 3.1 Basic Array Operations

 Multiply every element in the array below by 3 to get [3, 6 .. 15].
 [1, 2, 3, 4, 5]
=end

[1, 2, 3, 4, 5].map { |ele| ele*3 }

# The method select is the standard Ruby idiom for filtering elements. In the following code, 
# try extracting the strings that are longer than five characters.
names = ['rock', 'paper', 'scissors', 'lizard', 'spock']

names.select {|ele| ele.length > 5}

# Try guessing the method you need to use to delete the element '5' from the array given below:
# [1,3,5,4,6,7]

[1,3,5,4,6,7].delete(5)

# Delete all the even numbers from the array given below.
# [1,2,3,4,5,6,7,8,9]

[1,2,3,4,5,6,7,8,9].delete_if {|i| i.even?}
