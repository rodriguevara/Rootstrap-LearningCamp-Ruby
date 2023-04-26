# 6.0 Methods
# Write a method called add_two that adds 2 to any number passed to it and returns the result. Yes, please feel free to experiment
# using next in addition to the more obvious route of simply adding the integer 2 to the incoming number.
def add_two(number)
    return number.next.next
end

p add_two(2)


# You are used to this by now. Write for me three methods - calculate, add and subtract. The tests should all pass. 
# Take a look at the hint if you have trouble! And as a little extra hint: remember that you can use something.is_a?(Hash) or 
# another_thing.is_a?(String) to check an object's type.

def add(*numbers)
    numbers.inject(0) { |sum, number| sum + number }  
end
  
def subtract(*numbers)
    current_result = numbers.shift
    numbers.inject(current_result) { |current_result, number| current_result - number }  
end

def calculate
    options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
    options[:add] = true if options.empty?
    return add(*arguments) if options[:add]
    return subtract(*arguments) if options[:subtract]
end
