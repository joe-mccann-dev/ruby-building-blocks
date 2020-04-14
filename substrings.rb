def substrings (string, string_array)
  string_counts = {}
  string_array.each do |entry|
    if string.downcase.include?(entry)
      instances = string.downcase.scan(entry)
      count = instances.count
      string_counts[entry] = count
    end
  end
  string_counts
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
