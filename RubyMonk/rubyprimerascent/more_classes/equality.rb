2.2

class Item
    attr_reader :item_name, :qty
    
    def initialize(item_name, qty)
        @item_name = item_name
        @qty = qty
    end
    def to_s
        "Item (#{@item_name}, #{@qty})"
    end
    def ==(other_item)
      # your code here
      return true if self.item_name == other_item.item_name && self.qty == other_item.qty
    end
end

p Item.new("abcd",1)  == Item.new("abcd",1)
p Item.new("abcd",2)  == Item.new("abcd",1)

# You have to implement the equality methods for this object. 
class Item

attr_reader :item_name, :quantity, :supplier_name, :price

def initialize(item_name, quantity, supplier_name, price)
    @item_name = item_name
    @quantity = quantity
    @supplier_name = supplier_name
    @price = price
end 

def ==(other_item)
    @item_name == other_item.item_name &&
    @quantity == other_item.quantity &&
    @supplier_name == other_item.supplier_name &&
    @price == other_item.price
end

def eql?(other_item)
    self == other_item
end

def hash
    @item_name.hash ^ @quantity.hash ^ @supplier_name.hash ^ @price.hash
end    
end

# 2.3 override the to_s method of the Item class so that it returns a string with both the item's name and quantity.

class Item
    def initialize(item_name, qty)
        @item_name = item_name
        @qty = qty
    end

    # override 'to_s' here  
    def to_s
        "item_name: #{@item_name}, qty: #{@qty}"
    end
end
  
item = Item.new("a",1)
  
  puts item
  p item
