# 3.0 Finish this method to return an array. The method accepts only a two-dimensional array. The elements of the array that this method returns are the sums of the first two elements of each inner-array of the two-dimensional array that is passed in.

def compute(ary)
    return nil unless ary
    ary.map { |(a, b)| !b.nil? ? a + b : a }
end

# Modify this expression to slurp the middle portion of this array using a middle variable.
first,*middle, last = [42, 43, 44, 45, 46, 47]


# Now write an exercise to calculate the median from a set of numbers. Assuming that median method takes in the list as arguments passed in.

def median(*list)
    return nil if list.empty?
    
    mid = list.size / 2
    sorted = list.sort
    
    if sorted.length.odd?
      sorted[mid]
    else
      (sorted[mid - 1] + sorted[mid]).to_f / 2.0
    end
end

# count also takes in a block and returns the number of elements in the array for which the block results to true. Find out the number of even numbers in this array.


[4, 8, 15, 16, 23, 42].count { |e| e.even? } 
# Write a method that counts the number of elements of the array that is being passed in, only if the index of the number 42 in the one-dimensional representation of the array is 5.

def zen(array)
	# write your method here
  ary = array.flatten.compact
  ary.count if ary.index(42) == 5
end

# Write a method that takes an array argument, slices off the last two elements and returns a string of those two elements separated by "|"

def few2last(array)
    array.slice(-2..-1).join("|")
end

