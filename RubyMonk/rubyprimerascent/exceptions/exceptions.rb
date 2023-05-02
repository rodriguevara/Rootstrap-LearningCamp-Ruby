# 5.0 write a method called decode_all which takes an array of strings as a parameter. decode_all should call decode (the world's worst encryption algorithm) with each string, rescuing on Exception. decode will record each secret uncovered so far using announce.

EXAMPLE_SECRETS = ["het", "keca", "si", nil, "iel"]

def decode(jumble)
  secret = jumble.split("").rotate(3).join("")
  announce(secret)
  secret
end

def decode_all(array)
  array.each do |string|
    decode(string)
  end
rescue
  puts "exception rescued"
end


# Rescue with the string "it's okay, little buddy." if an exception is raised:
def decode_all(array)
    array.each {|ele| decode(ele)} rescue "it's okay, little buddy."
end

# Try it yourself. Imagine we have a connection to a database which we can close with Database#close. Clean up your database connection in the following exercise.

class UserDataAccess
    attr_accessor :db
    
    def initialize
      @db = Database.new
    end
  
      def find_user(name)
        @db.find("SELECT * FROM USERS WHERE NAME = '%'", name)
    rescue Exception => e
      puts "A database error occurred."
    ensure @db.close
      end
end

# Write a string_slice method that accepts 5 string parameters and raises ArgumentError if more than 5 are passed in. string_slice returns a sequential array of these strings sliced up until the third character; it also raises IndexError if the string is less than 3 characters long.
def string_slice(*strings)
    if strings.size > 5
      raise ArgumentError
    end
    array = []
    strings.each do |ele|
      if ele.size < 3
        raise IndexError
      else
          array << ele[0..2]
      end
    end
    array
  end



# 5.1 Raise a custom exception handler KasayaError in the robe method if the argument type is not a String "Kasaya". It should return "Dharmaguptaka's Kasaya Robe" otherwise.

class KasayaError < StandardError
end

def robe(type)
  unless type.downcase == "kasaya"
    raise KasayaError
  end
  
  "Dharmaguptaka's " + type.capitalize + " Robe"
end

# Change the last example to return the found tile from a method called search, instead. search should receive the floor plan as a parameter.


def search(floor)
    floor.each do |row|
        row.each do |tile|
          return tile if tile == "jawbreaker" || tile == "gummy"
        end
    end
  end
  
  puts search([["blank", "blank", "blank"],
           ["gummy", "blank", "blank"],
           ["blank", "blank", "blank"]])
