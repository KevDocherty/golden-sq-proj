def get_most_common_letter(text)
  counter = Hash.new(0)
  unwanted_chars = ",.;:! "
  text.chars.each do |char|
    if !unwanted_chars.include? char
      counter[char] += 1
    end
  end 
  
  #puts counter
  #counter.to_a.sort_by { |k, v| v } 
  counter.sort_by(&:last).to_a[-1][0]
end

#get_most_common_letter("the roof, the roof, the roof is on fire")
result = get_most_common_letter("the roof, the roof, the roof is on fire")
puts result[-1][0]

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"