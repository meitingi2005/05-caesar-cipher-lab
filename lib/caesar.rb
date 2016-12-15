$alphabet_downcase = ('a'..'z').to_a
$alphabet_upcase = ('A'..'Z').to_a
def caesar_encode(string,offset)
  string.split("").map do |word|
    if word=~ /[a-z]/
      new_offset = ( ($alphabet_downcase.index(word) + offset) % 26)
      new_word = $alphabet_downcase[new_offset]	
      elsif
      word=~ /[A-Z]/
      new_offset = ( ($alphabet_upcase.index(word) + offset) % 26)
      new_word = $alphabet_upcase[new_offset]	
      else
       word
    end
  end.join("")
end


def caesar_decode(string,offset)
  string.split("").map do |word|
    if word=~ /[a-z]/
      new_offset = ( ($alphabet_downcase.index(word) - offset) % 26)
      new_word = $alphabet_downcase[new_offset]	
      elsif
      word=~ /[A-Z]/
      new_offset = ( ($alphabet_upcase.index(word) - offset) % 26)
      new_word = $alphabet_upcase[new_offset]	
      else
       word
    end
  end.join("")
end