def caesar_cipher(str, key=0)
  characters = str.each_char.to_a
  shifted_characters = characters.map do |char|
    # map lower-case letters
    if (char.ord >= 97 && char.ord <= 122) 
      char = ((char.ord - 97 + key) % 26 + 97).chr # translate ASCII code into text
    # map upper-case letters
    elsif (char.ord >= 65 && char.ord <= 90) 
      char = ((char.ord - 65 + key) % 26 + 65).chr
    else
      char # don't change punctuation or whitespace
    end
  end
  shifted_characters.join
end

puts caesar_cipher("Czggj, Mpwt!", 5)
puts caesar_cipher("What a string!", 5)
puts caesar_cipher('Mjqqt, Btwqi!', -5)