def substrings(string, substrings)
  counts = substrings.reduce(Hash.new(0)) do |count, substring|
      count[substring] = string.downcase.scan(substring).length
      count
  end
  counts.filter { |k,v| v != 0}
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)