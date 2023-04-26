# Lambdas
# Now go ahead and add a lambda to the following code which increments any number passed to it by 1.
# Increment = lambda { } # your lambda between the braces

Increment = lambda { |n| n+1 } # your lambda between the braces

p Increment.call(1)

# Now for some practice. Using what you've learned from earlier examples and exercises, make the tests pass.
# def calculate
# end

def calculate(n,m)
    yield(n,m)
end

p calculate(2,3) {|n,m| n+m}

