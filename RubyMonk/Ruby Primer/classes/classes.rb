#5.1 Classes
# extend this class to add a method that calculates area using the formula length * breadth.

class Rectangle
    def initialize(length, breadth)
      @length = length
      @breadth = breadth
    end
  
    def perimeter
      2 * (@length + @breadth)
    end
  
    #write the 'area' method here
    def area
        @length*@breadth
    end
end

rectangle = Rectangle.new(2,3)
p rectangle.area

