# 2.0   you have to define a description method, a getter, which returns a string that has both the description and color of the object.


class Item
  def initialize(description, color)
    @description = description
    @color = color
  end
  # your code here
  def description
    return "#{@description} and #{@color}"
  end
end

# 2.1  You have to define two class-level methods: set and get. The set method takes two parameters: property_name and value. The get method takes one parameter: property_name, and should return the value that corresponds to the property.

class ApplicationConfiguration
  @@configuration = {}

  def self.set(property_name, value)
    @@configuration[property_name] = value
  end
  
  def self.get(property_name)
    @@configuration[property_name]
  end  
end

ApplicationConfiguration.set("name", "Demo Application")
ApplicationConfiguration.set("version", "0.1")

p ApplicationConfiguration.get("version")
