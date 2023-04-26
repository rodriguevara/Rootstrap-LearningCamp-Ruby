#4.1 hashes

# Use the each method to increase the price of all the items in the restaurant_menu by 10%.
# restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

restaurant_menu.each do |item, price|
    restaurant_menu[item] = price*1.1
end

# Try getting an array of all the keys in the restaurant_menu hash:
# restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

restaurant_menu.keys

# Cool. And easy! You have to now use the second form the "new hash" shortcut in this exercise. 
# Again, it takes an array of key-value pairs. These key-value pairs will just be 2-element arrays. 
# I ll give you the key-value pairs to start with. Your objective is to build a Hash out of this array.

# def artax
#     a = [:punch, 0]
#     b = [:kick, 72]
#     c = [:stops_bullets_with_hands, false]
#     key_value_pairs = # you can do this. you are a champion.
#                       # unlike Artax, who gave up in a swamp.
#     Hash[key_value_pairs]
#   end
#   p artax

def artax
    a = [:punch, 0]
    b = [:kick, 72]
    c = [:stops_bullets_with_hands, false]
    key_value_pairs = [a,b,c]# you can do this. you are a champion.
                      # unlike Artax, who gave up in a swamp.
    Hash[key_value_pairs]
end

artax
