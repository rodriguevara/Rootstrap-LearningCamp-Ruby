# 3.2 Iteration

# Copy the values less than 4 in the array stored in the source variable into the array in the destination variable.
# def array_copy(source)
#     destination = []
#     # your code
#     return destination
#   end

def array_copy(source)
    destination = []
    source.each do |ele|
        destination << ele if ele < 4
    end
    return destination
end

source = [1,2,3,4,5,6,7,8]
p array_copy(source)


