# File: spec/grammar_stats_spec.rb

require "grammar_stats"

RSpec.describe GrammarStats do
  
  context "no text supplied" do
    it "fails" do
      text_check = GrammarStats.new()
      expect { text_check.check("") }.to raise_error "empty string"
    end
  end
  
  it "checks text for grammar" do
    text_check = GrammarStats.new()
    expect(text_check.check("One.")).to eq true
  end 
  
  it "checks text for grammar" do
    text_check = GrammarStats.new()
    expect(text_check.check("one")).to eq false
  end 
  
  it "checks the percentage passing" do
    text_check = GrammarStats.new()
    text_check.check("one")
    text_check.check("One.")
    text_check.check("One")
    text_check.check("bad grammar")
    expect(text_check.percentage_good()).to eq 25
  end
    
end

