=begin 2.2 Loops in Ruby
Now write an infinite loop where the monk will meditate till he achieves Nirvana. Use the break statement once Nirvana is reached.

# you have to change the following statement (into multiple ones if needed)
# so that the monk meditates till monk.nirvana? becomes true.
monk.meditate unless monk.nirvana?

=end

# monk.meditate until monk.nirvana?

# Here is a task for you to test your newly learned looping skills. We have a bell outside our monastery that people can ring 
# in times of need. Write a method that can ring the bell N times, where N is a parameter passed to the method.

# add a loop inside this method to ring the bell 'n' times
# def ring(bell, n)
#     bell.ring
# end  

def ring(bell, n)
    n.times do
        p bell
    end
end  

puts ring("ding", 5)
