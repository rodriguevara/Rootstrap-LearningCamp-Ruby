# 4.1 Well, that is all you need to know! Now get going and make those tests green!


module Foo
    def method_in_module
       "The method defined in the module invoked"
    end
  end
  
  class Bar
    def initialize
      self.extend Foo
    end
  end

# You have to modify the module Foo in the following exercise so that when you include it the class Bar, it also adds all the methods from ClassMethods into Bar as class methods.

module Foo
def self.included(base)
    base.extend(ClassMethods)
    end
module ClassMethods
    
    def guitar
    "gently weeps"
    end
end
end

class Bar
include Foo
end

puts Bar.guitar


# A quick drill before we move on. In the following exercise you have to define a static method square in the module Math. It should obviously return the square of the number passed to it. Alright, jump right in:
# your code here
module Math
    def self.square(number)
      number*number
    end
    
  end
  puts Math.square(6)
