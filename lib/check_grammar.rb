# File: lib/check_grammar.rb

def check_grammar(text)
  #fail "empty string" if text.empty?
  fail "empty string" if text == ""
  
  
  first_letter_capital = (text[0] == text[0].upcase)
  sentence_end_punctuation = [".","!"].include? text[-1]
  
  if first_letter_capital && sentence_end_punctuation 
    true
  else
    false
  end
  

end