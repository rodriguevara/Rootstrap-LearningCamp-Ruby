# 0.1 Now, write any code in eval that returns a value that is greater than that stored in answer. Make sure that the expression below becomes true.

answer < eval("answer + 1")


# assuming contents has the code 
# def code
#   7 + 6
# end

contents = Document.new('zen').get_contents
# we want to replace * with +
result = eval("contents.gsub('+', '*')")

# Basically instance_eval works by treating the object as it were an instance of something. Implying a self context to the receiving object.

# Get your head around this oddity, by solving this exercise.

class Monk
end

# define a class method 'sum' on Monk using instance_eval
# that returns 49.
Monk.instance_eval("def sum; 49; end")


# Unlike eval, instance_eval can also accept a block instead of a string. If you haven't already, it is advisable to read the Blocks lesson on Ruby Primer before solving the rest of this chapter.
# Solve this simple exercise by using a block with instance_eval.

class Monk
    def initialize
      @zen = 42
    end
end
  
  m = Monk.new
  m.instance_eval {@zen += 1}
# Define a singleton method zen on the class Monk that returns 42.


class Monk
end
  
  m = Monk.new
  m.instance_eval do
    def zen
      42
    end
end


# 0.3 Try this simple exercise similar to the last one from instance_eval. Increment @zen to satisfy @zen == 42 through a method zen defined on an instance of Monk using class_eval.

class Monk
end

Monk.class_eval { def initialize; @zen = 41; end }
Monk.class_eval { def zen; @zen += 1; end }
