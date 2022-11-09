# File: lib/count_words.rb

def count_words(text)
  words = text.split(" ")
  return words.length
end

# puts count_words("This is a string.")