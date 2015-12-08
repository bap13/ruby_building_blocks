def substrings(string, dictionary)
  substring_hash = {}
  dictionary.each do |word|
    occur = string.downcase.scan(/#{word}/).count
    if occur > 0
      substring_hash[word] = occur
    end
  end
  substring_hash
end
