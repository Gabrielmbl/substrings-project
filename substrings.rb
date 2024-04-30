def substrings(string, dictionary)
  string_downcase = string.downcase

  result = Hash.new(0)
  dictionary.each do |word|
    result[word] += string_downcase.scan(word).length if string_downcase.include?(word)
  end
  result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
