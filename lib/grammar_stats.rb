# File: lib/grammar_stats.rb

class GrammarStats
  def initialize
    # ...
    @texts_checked = 0
    @texts_passed = 0
    
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    fail "empty string" if text.empty?
    @texts_checked += 1
    first_letter_capital = (text[0] == text[0].upcase)
    sentence_end_punctuation = [".","!"].include? text[-1]
  
    if first_letter_capital && sentence_end_punctuation 
      @texts_passed += 1
      true
    else
      false
    end
  end
  
  def report_status
    [@texts_checked, @texts_passed]
  end
  
  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    #puts @texts_checked
    #puts @texts_passed
    return ((@texts_passed / @texts_checked.to_f) * 100).to_i
  end
end

'''
text_check = GrammarStats.new()
puts text_check.check("One.")
puts text_check.check("one")
#puts text_check.texts_checked
puts text_check.report_status
puts text_check.percentage_good
'''
