#!/usr/bin/ruby
def substrings (string, dictionary)
  string_counts = {}
  dictionary.each do |entry|
    if string.downcase.include?(entry)
      occurences = string.downcase.scan(entry)
      count = occurences.count
      string_counts[entry] = count
    end
  end
  string_counts
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
