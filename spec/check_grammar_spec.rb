# File: spec/check_grammar_spec.rb

require 'check_grammar'

RSpec.describe "check_grammar" do
  context "given an empty string" do
    it "fails" do
      expect{ check_grammar("")}.to raise_error "empty string"
    end
  end 
  
  context "given a string without capital or full-stop" do
    it "returns false" do
      expect(check_grammar("one")).to eq false
    end
  end
  
  context "no end punctuation" do
    it "returns false" do
      expect(check_grammar("One")).to eq false
    end
  end
  
  context "text has capital and end punctuation" do
    it "returns true" do
      expect(check_grammar("One!")).to eq true
    end
  end
  
  it "checks that grammar is good" do
    expect(check_grammar("One.")).to eq true
  end
  
  
end