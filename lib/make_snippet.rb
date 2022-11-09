# File: lib/make_snippet.rb

def make_snippet(text)
  words = text.split(" ")
  first_five_words = []
  count = 0
  words.each do |word|
    first_five_words << word
    count += 1
    if count >= 5
      break
    end
  end
  short_string = first_five_words.join(" ") + "..."
  return short_string
end

# result = make_snippet("This is my string of more than five words.")
# puts result