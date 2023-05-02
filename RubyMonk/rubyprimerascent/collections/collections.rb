# 7.0 Try and implement a simplemap_with_index on the Array class through which you can call a block with two arguments: the element and its index. It should return an Enumerator object if no block is given, an Array otherwise.

class Array
    def map_with_index(&block)
      self.each_with_index.map(&block)
    end
end

# 7.1 Exploit the fact that map always returns an array: write a method hash_keys that accepts a hash and maps over it to return all the keys in a linear Array.


def hash_keys(hash)
	hash.map { |kv| kv.first }
end

# Try implementing a method called occurrences that accepts a string argument and uses inject to build a Hash. The keys of this hash should be unique words from that string. The value of those keys should be the number of times this word appears in that string

def occurrences(str)
	str.scan(/\w+/).inject(Hash.new(0)) do |build, word| 
  	build[word.downcase] +=1
  	build
	end
end

# The island will survive only if none of the candidates is "Esau" and it'll remain safe only if all of the candidates are "Jack".

class Island
    def initialize(candidates)
      @candidates = candidates
    end
    
    def survive?
      @candidates.none? {|can| can =="Esau"}
    end
    
    def safe?
      @candidates.all? {|can| can == "Jack"}
    end
end

# To process the orders, you have to remove items that are out of stock from the customer's order. Also, you promised your customers to ship some free gifts with every order, don't forget that!

class Order
    GIFT_ITEMS = [Item.new(:big_white_tshirt), Item.new(:awesome_stickers)]
    OUT_OF_STOCK_ITEMS = [Item.new(:ssd_harddisk)]
  
    def initialize(order)
      @order = order || []        
    end
    
    def final_order
      # fix this method to get the tests to pass.
      @order + GIFT_ITEMS - OUT_OF_STOCK_ITEMS
    end
  end
  
  customer_order = Order.new([Item.new(:fancy_bag),Item.new(:ssd_harddisk)])
  
  p customer_order.final_order

#   7.2  You need to implement the each method for this class. The method should iterate over the NUMBERS array and yield each element.

class FibonacciNumbers
    NUMBERS = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
      
      def each
        NUMBERS.each {|number| yield(number)}
    end
  end
  
  f=FibonacciNumbers.new
  f.each do |fibonacci_number|
    puts "A Fibonacci number multiplied by 10: #{fibonacci_number*10}"
end


# Okay, here is possibly one of the simplest exercise in RubyMonk yet! Run the code snippet and make the tests pass!
class FibonacciNumbers
	NUMBERS = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
  include Enumerable
  def each
    NUMBERS.each {|num|yield(num)}
  end
  # all your code goes here
end

f = FibonacciNumbers.new
if f.respond_to?(:map)
  squares = f.map {|number| number * number }
	puts "The squares of the fibonacci numbers are #{squares}"
else
  puts "I'll reveal the squares to you once you pass the tests."
end

# 7.3 But what else? Let me test your comprehension with an exercise. Figure out a way to change the value of b to "batman" so that printing the contents of superheroes lists tom and batman.

a = "tom"
b = "jerry"
b = b.sub("jerry","batman")
puts superheroes = [a,b]
