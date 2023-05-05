#0.1 Let's add a method called words to String to do just this. If you're not sure about how to split a string, take a look at our lesson on string manipulation in the "Ruby Primer" first.
class String
	def words
 		split(" ")
    end
  
end

#1.0 Ruby gives a convenient way for you to call any method on an object by using the send method. send takes, as its first argument, the name of the method that you want to call. This name can either be a symbol or a string.

class Nomad
    def initialize(glider)
      @glider = glider
    end
  
    def do(action)
      @glider.send(action)
    end
end

class Nomad
    def initialize(glider)
      @glider = glider
    end
  
    def do(action, argument = nil)
      if argument == nil
        @glider.send(action)
      else
        @glider.send(action, argument)
      end
    end
end


class Initiate
    def initialize(secretive_monk)
      @secretive_monk = secretive_monk
    end
    
    def	meaning_of_life
      # change this line to sneakily call `meaning_of_life`, even though
      # it is a private method.
      @secretive_monk.send(:meaning_of_life)
    end
end

# In this exercise we've defined a method relay. It accepts two parameters - an array of values, and a data_type. The relay method should return a new array, but with all elements converted to data_type.

def relay(array, data_type)
    array.map {|ele| ele.send("to_#{data_type}") }
end
