# Try calling the method that writes "Bar" to a file named disguise.
# File.open("disguise", "r") do |f|
#     puts f.read
#   end
File.open("disguise", "w") do |f|
    puts f.write "Bar"
end
