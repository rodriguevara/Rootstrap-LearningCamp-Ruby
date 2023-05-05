# 1.1 Lifecycle callbacks are simple enough to understand that you will understand it very quickly with a little practice. Here's an exercise for you to try it out - simply make the tests pass.

class Dojo
    @@methods_added = []
    
    def self.methods_added
      @@methods_added
    end
    
    def self.method_added(method_name)
      @@methods_added << method_name
    end
end

# The only interesting difference from method_added worth noting is that since singleton_method_added is itself a singleton method, it receives a callback - about itself - as soon as it's added.


class Dojo
    @@singleton_methods_added = []
    
    def self.singleton_methods_added
      @@singleton_methods_added
    end
    
    def self.singleton_method_added(method_name)
      @@singleton_methods_added << method_name
    end
end

# The most natural tack the mind takes with these two callbacks is to assume that method_added will observe instance methods and singleton_method_added, class methods. This, however, is not entirely true; Ruby's singleton object backs normal objects and contains object specific changes. For classes, these are class methods. But when adding a method to a single, regular object, adding instance methods to that object alone modifies the singleton object for that object.

AN_OBJECT = Object.new

def AN_OBJECT.methods_added
  @@methods_added ||= []
end

def AN_OBJECT.singleton_methods_added
  @@singleton_methods_added ||= []
end

def AN_OBJECT.singleton_method_added(method_name)
  singleton_methods_added << method_name
end

def AN_OBJECT.method_added(method_name)
  methods_added << method_name
end


# 1.2 They're called - you guessed it - method_removed and singleton_method_removed respectively.

# As always, the best way to learn is through exercises, so lets do a couple of those.

class Dojo
    @@methods_removed = []
    
    def self.methods_removed
      @@methods_removed
    end
  
    def self.method_removed(name)
      @@methods_removed << name
    end
    
    def tai_kyo_kyu
    end
    
    def pinan_shodan
    end
end

# Great! Now for singleton_method_removed.

class Dojo
    @@singleton_methods_removed = []
    
    def self.singleton_methods_removed
      @@singleton_methods_removed
    end
    
    def self.singleton_method_removed(name)
      @@singleton_methods_removed << name
    end
    
    def self.tai_kyo_kyu
    end
    
    def self.pinan_shodan
    end
end
# The callbacks match the ones for removed methods and are called method_undefined and singleton_method_undefined.

class Dojo
    @@methods_undefined = []
    
    def self.methods_undefined
      @@methods_undefined
    end
  
    def self.method_undefined(name)
      @@methods_undefined << name
    end
  
    def tai_kyo_kyu
    end
    
    def pinan_shodan
    end
  end


#   1.3 Ruby provides the Module.included method to receive callbacks when this happens. Module.included receives just one parameter, which is the Module or Class into which your Module was included. Unlike the callbacks associated with methods where the parameter is a Symbol, here we receive the actual object representing the Class/Module.

module SparringArea
    @@included_into = []
    
    def self.included_into
        @@included_into  
    end
    
    def self.included(class_or_module)
      @@included_into << class_or_module
    end
end

# The Module#extended callback is triggered when an object is extended using Module#extend. The only difference is that Module#extended receives the object as a parameter as opposed to Module#included where the parameter is always either a Class or a Module.

class Dojo
end

module SparringArea
  @@extended_objects = []
  
  def self.extended_objects
  	@@extended_objects
  end
  
  def self.extended(objet)
    @@extended_objects << objet
  end
end

A_DOJO = Dojo.new
ANOTHER_DOJO = Dojo.new

# 1.4 

class Room
    @@subclasses = []
    
    def self.subclasses
      @@subclasses
    end
    
    def self.inherited(subclass)
      @@subclasses << subclass
    end
end


# Here's a final exercise to keep them fresh in your mind. It's based on a common pattern seen in many Ruby gems. All you should do is add the lifecycle callbacks containing code necessary to make the tests pass.

module Gym
    def self.included(class_or_module)
      class_or_module.send(:include, InstanceMethods)
      class_or_module.extend(ClassMethods)
    end
    
    module ClassMethods
      def build
      end
    end
    
    module InstanceMethods
      def open
      end
      
      def book_for_practice
      end
      
      def close
      end
    end
end
