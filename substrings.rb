def substrings(string, substrings)
  counts = substrings.each_with_object(Hash.new(0)) do |substring, count|
    count[substring] = string.downcase.scan(substring).length
  end
  counts.filter { |_k, v| v != 0 }
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts substrings('Below', dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
