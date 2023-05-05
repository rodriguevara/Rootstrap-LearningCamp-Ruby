# 2.1 Let's start with the concept, sans metaprogramming magic. Write a constructor for ErrorMessage which accepts a named hash for initializing @message, @status, and @suggestion.

class ErrorMessage
    attr_accessor :message, :status, :suggestion
    
      def initialize(h)
      @message = h[:message]
      @status = h[:status]
      @suggestion = h[:suggestion]
    end
end

# Give that a shot: blindly assign to instance variables using the keys of the hash with instance_variable_set.

module BlindInitialize
    def initialize(h)
      h.each { |key, value| instance_variable_set("@#{key}", value) }
    end
  end
  
  class ErrorMessage
    attr_accessor :message, :status, :suggestion
    include BlindInitialize
  end
  
  class SuccessMessage
    attr_accessor :message, :status
    include BlindInitialize
end


# Define the mixin below, using Cheese as an example of how it will be consumed to test out your implementation.
module HashInitialized
    def hash_initialized(*fields)
      define_method(:initialize) do |h|
          missing = fields - h.keys
          raise Exception, "Not all fields set: #{missing}" if missing.any?
  
        h.each do |k,v|
          instance_variable_set("@#{k}", v) if fields.include?(k) 
        end
      end
    end
  end
  
  class Cheese
    extend HashInitialized
    attr_accessor :color, :odor, :taste
    hash_initialized :color, :odor, :taste
  end


#   2.2Fill out the Not class below, and use it to return an object capable of inverting calls to Object#not. We'll use calls to smith? as examples and in the tests. You'll see why in the next exercise.

class Object
    def not
      Not.new(self)
    end
  
    class Not
      def initialize(original)
        @original = original
      end
  
      def method_missing(sym, *args, &blk)
        !@original.send(sym, *args, &blk)
      end
    end
  end
  
  class Person
    def initialize(name)
      @name = name
    end
    
    def smith?
      @name == "Smith"
    end
  end

# That's going to be a problem for us. No instance of Not will ever be nil, by definition. That means we need to trap messages sent to Not objects for methods defined on Object itself so they're handled by our inversion logic

  class Object
    def not
      Not.new(self)
    end
  
    class Not
      # the call to `select` is optional for passing this exercise.
      # we've included it here because methods with these types of
      # names should not be proxied:
      # 1) methods starting with underscore (i.e. __send__ )
      # 2) methods which are not words (i.e. != )
      # 3) methods which end in "binding"
      private *instance_methods.select { |m| m !~ /(^__|^\W|^binding$)/ }
      # ...with the `select` in place, you can use this snippet in 
      # your own projects!
      
      def initialize(original)
        @original = original
      end
  
      def method_missing(sym, *args, &blk)
        !@original.send(sym, *args, &blk)
      end
    end
  end
  
  puts "nil.not.nil? => #{nil.not.nil?}"
  puts "Object.new.not.nil? => #{Object.new.not.nil?}"

#   Try writing one. Again, we'll reopen Object so our dbg (short for debug) method is available everywhere.

  class Object
    def dbg(o)
      puts o.inspect
      o
    end
  end
  
  def order(food)
    dbg(deliver(dbg(prepare(food))))
  end
