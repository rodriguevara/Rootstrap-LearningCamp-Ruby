=begin 2.1 The if..else construct
Ruby gives you the elsif keyword that helps you check for multiple possibilities inside 
an if..else construct. Try using elsif to fix the code below so that when the number is zero, it just prints 0.
    def check_sign(number)
        if number > 0
            "#{number} is positive"
        else
            "#{number} is negative"
        end        
    end   
=end

def check_sign(number)
  if number > 0
    "#{number} is positive"
  elsif number < 0
    "#{number} is negative"
  else        
    "number is 0"
  end
end

puts check_sign(-1)
