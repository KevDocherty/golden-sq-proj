# File: spec/count_words_spec.rb

require 'count_words'

RSpec.describe "count_words method" do
  it "returns the number of words in a string" do
    text = "This is a test string."
    result = count_words(text)
    expect(result).to eq 5
  end
end