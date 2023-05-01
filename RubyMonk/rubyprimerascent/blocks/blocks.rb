# 0.0 Lets build four blocks one each for addition, subtraction, multiplication and division
# Addition = lambda {|a, b| return a + b } # use this as your example!

Subtraction = lambda { |a,b| return a - b } # your code between the braces

Multiplication = lambda { |a,b| return a * b} # your code between the braces

Division = lambda {|a,b| return a / b } # your code between the braces

#  Here, you’ll need to convert the block passed to Filter from implicit to explicit, then back again.

Filter = lambda do |array, &block|
    array.select(&block)
end
