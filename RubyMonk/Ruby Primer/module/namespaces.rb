# You are given a library called RubyMonk. It contains a module Parser which defines a class CodeParser. 
# Write another class TextParser in the same namespace that parses a string and returns an array of capitalized alphabets.

module RubyMonk
    module Parser
      class TextParser
        def self.parse(string)
          # define method
          array = []
          chars = string.split("")
          chars.each {|char| array << char.upcase}
          return array
        end
      end
    end
end
p RubyMonk::Parser::TextParser.parse('RubyMonk')
