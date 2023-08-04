def caesar_cipher(string, shift)
  chars = string.split("")
  shifted = chars.map { |char| shift(char, shift) }
  new_string = shifted.join
  puts new_string
end

def shift(char, shift)
  if char.match?(/[[:alpha:]]/)
    ord = char.downcase.ord
    new_ord = ord + shift
    new_ord -= 26 if new_ord > 122 
    new_char = new_ord.chr
    new_char.upcase! if char == char.upcase
    new_char
  else
    char
  end
end

caesar_cipher("What a string!", 5)  