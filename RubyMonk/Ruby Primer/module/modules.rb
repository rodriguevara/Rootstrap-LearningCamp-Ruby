=begin
Time for some practice! As always, make the tests pass. Note that the perimeter of both a square and a rectangle is calculated by summing up all of its sides.
module Perimeter
  # Your code here
end

class Rectangle
  # Your code here
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def sides
    [@length, @breadth, @length, @breadth]
  end
end

class Square
  # Your code here
  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
  end
end

=end

module Perimeter
    # Your code here
    def perimeter
        sides.sum
    end
  end
  
  class Rectangle
    # Your code here
    include Perimeter
    def initialize(length, breadth)
      @length = length
      @breadth = breadth
    end
  
    def sides
      [@length, @breadth, @length, @breadth]
    end
  end
  
  class Square
    # Your code here
    include Perimeter
    def initialize(side)
      @side = side
    end
  
    def sides
      [@side, @side, @side, @side]
    end
  end

  p Rectangle.new(2,3).perimeter
  p Square.new(5).perimeter
