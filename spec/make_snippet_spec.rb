# File: spec/make_snippet_spec.rb

require 'make_snippet'

RSpec.describe "make_snippet method" do
  it "returns the first 5 words from a string" do 
    #result = MakeSnippet("This is my string of more than five words.")
    result = make_snippet("This is my string of more than five words.")
    expect(result).to eq "This is my string of..."
  end
end
