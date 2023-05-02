# 6.3 Try creating classes in these exercises the same way.

def awkward_sheep
    sheep = Class.new do
      def speak
        "Bah."
      end
    end
end

# Notice that we had to wrap our sheep class in a method to get access to it from our tests. Try namespacing it as you would normally in this next exercise. You'll find you run into a new issue.



module Fence
	Sheep = Class.new do
    def speak
      "Bah."
    end
  end
end

def call_sheep
  Fence::Sheep.new.speak
end
