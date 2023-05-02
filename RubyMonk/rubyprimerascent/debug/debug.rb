# 8.1 You have to fix the method so that it prints the name and age from the parameter I pass to it.
def describe(user_info)
    "My name is #{user_info["name"]} and I'm #{user_info["age"]} years old."
end

# I've implemented the class DrivingLicenseAuthority that decides whether to grant a license to applicants or not. But unfortunately, it is buggy. I'm not going to tell you all the details so you'll have to find out where things are breaking and why - the tests are pretty bland. The goal is to get all the tests to pass. Remember, p is your friend.

class VisualAcuity
    def initialize(subject, normal)
      @subject = subject.to_f
      @normal = normal.to_f    
    end
    def can_drive?
      (@subject / @normal) >= 0.5
    end  
  end
  
  class DrivingLicenseAuthority
    def initialize(name, age, visual_acuity)
      @name = name
      @age = age
      @visual_acuity = visual_acuity
    end
    
    def valid_for_license?
      true if @age >= 18 && @visual_acuity.can_drive?
    end
    
    def verdict
      if valid_for_license?
          "#{@name} can be granted driving license"
      else
        "#{@name} cannot be granted driving license"
      end
    end
end


# 8.2 You have to instrument the order so that during each step, an appropriate log is produced. Each log should contain the new state of the order and any new information passed to it during that step. You should use info as your severity level for normal logs. For exceptions, use error.

class Order
    def initialize(order_items, customer)
      @logger = Logger.new($stdout)
      @order_items = order_items
      @customer = customer
      @state = :new
      @logger.info "New order from #{@customer}"
    end
  
    def procure(vendor)
      if @state == :new
        @vendor = vendor
        @state = :procured
        @logger.info "Order procured from #{@vendor}"
      else
        @logger.error "You can procure only new orders"
      end
    end
  
    def pack
      if @state == :procured
        @state = :packed
        @logger.info "Order packed"
      else
        @logger.error "You can't pack before procuring"
      end
    end
  
    def ship(address)
      if @state == :packed
        @state = :shipped
        @shipping_address = address
        @logger.info "Order shipped to #{@shipping_address}"
      else
        @logger.error "You can't ship before packing"
      end
    end
  end
  
  order = Order.new(["mouse", "keyboard"], "Asta")
  order.procure("Awesome Supplier")
  order.pack
  order.ship("The Restaurant, End of the Universe")
  
# 8.3 And now, I want you to use Ruby's super-awesome blocks to create a method which takes in a block, executes it, and returns the time it took.

def benchmark(&block)
    begin_time = Time.now
    block.call
    end_time = Time.now
    end_time - begin_time
    # your code here!
end
  
time_taken = benchmark do
    sleep 0.1
end
puts "Time taken #{time_taken}"
