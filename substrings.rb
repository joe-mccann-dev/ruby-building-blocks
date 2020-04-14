def substrings (word, dictionary)
  string_counts = {}
  dictionary.each do |entry|
    if word.downcase.include?(entry)
      instances = word.downcase.scan(entry)
      count = instances.count
      string_counts[entry] = count
    end
  end
  string_counts
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
