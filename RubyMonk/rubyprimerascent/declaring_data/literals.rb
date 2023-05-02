6.1 

def big_num
    1_233333333333333333333_35555555555
  end
  
describe(big_num)

def quoted_string(to_be_quoted)
    "Suuuure. You were just \"#{to_be_quoted}\"."
end

def multi_line_string(*lines)
    "Here are your lines!\n\n#{lines.join("\n")}"
end

def big_q_string(numerator, denominator)
	%Q[This %Q syntax is the ugliest one.
    #{numerator} out of #{denominator} "dentists" agree.]
end

def repetitive_array_of_strings
    ["Wow,", "this", "is", "a", "pretty", "long", "list", "of", "words", "and", "it", "took", "me", "a", "long", "time", "to", "type", "because", "of", "all", "those", "darn", "quote", "characters.", "Geez."]
end
  
def array_of_words_literal
    %w[With this double-u shorthand it wasn't very hard at all to type out this list of words. Heck, I was even able to use double-quotes like "these"!]
end
