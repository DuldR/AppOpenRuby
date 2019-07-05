butt = "bridge over the river kwai"
words = butt.split(" ")
little_words = [ "and", "the", "over", "a", "on", "of" ]

titleized_words = words.map.with_index do |word, i|

    if i == 0 || !little_words.include?(word)
      word.capitalize
    else
      word.downcase
    end

end

print titleized_words

