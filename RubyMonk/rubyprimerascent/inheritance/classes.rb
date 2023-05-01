# 1.1 Your turn to practice. As always, your objective is to make the tests pass.


def is_ancestor?(klass, subclass)
    current_class = subclass
    while !current_class.superclass.nil? && current_class != klass
      current_class = current_class.superclass
    end
    current_class == klass
end

# Lets just build our own Square class that takes just one parameter to the constructor (initialize) instead of two, 
# but inherits perimeter from Rectangle.

# class Rectangle
#     def initialize(length, breadth)
#     @length = length
#     @breadth = breadth
#     end

#     def perimeter
#     2 * (@length + @breadth)
#     end
# end

class Square < Rectangle
    def initialize(length)
    @length = length
    @breadth = length
    end
end

# 1.3 

class Animal
def move
    "I can move"
end
end

class Bird < Animal
def move
    super + " by flying"
end
end

class Human < Animal
def move
    super + " by walking"
end  
end

class Penguin < Bird
def move
    "I can move by swimming"
end
