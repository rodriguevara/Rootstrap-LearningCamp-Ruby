# 1.1 Ruby gives you the option to accept yet another argument to the method_missing method, &block. Therefore your signature now looks like method_missing(sym, *args, &block).

class Spy
    def method_missing(sym, *args, &block)
      puts "#{sym} was called with #{args} and #{block}"
    end
end



class MethodCall
    def initialize(sym, args)
      @sym = sym
      @args = args
    end
    
    def sym
      @sym
    end
    
    def args
      @args
    end
    
    def ==(other_call)
      @sym == other_call.sym && @args == other_call.args
    end
  end
  
  class Spy
    def initialize
      @method_calls = []
    end
    
    def method_missing(sym, *args, &block)
      @method_calls << MethodCall.new(sym, args)
    end
  
    def method_called?(sym, *args)
      @method_calls.include?(MethodCall.new(sym, args))
    end
end

# Well, using send, of course. Every object in Ruby defines a send method. The first argument you pass to it is the method you wish to call, and the arguments after that are the arguments you wish to pass to the method.

class Spy
    def initialize(enemy_agent)
      @enemy_agent = enemy_agent
    end
    
    def method_missing(method_name, *args, &block)
      @enemy_agent.send(method_name, *args)
    end
end

# 1.1


class Monk
    ["life", "the_universe", "everything"].each do |action|
      define_method("meditate_on_#{action}") do
        "I know the meaning of #{action.gsub(/_/," ")}"
      end
    end
end
