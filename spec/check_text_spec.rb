# File: spec/check_text_spec.rb

require 'check_text'

RSpec.describe "check_text" do
  
  it "checks whether an empty string contains #TODO" do
    expect(check_text("")).to eq false
  end
  
  it "checks whether a string #TODO contains #TODO" do
    expect(check_text("#TODO")).to eq true
  end
  
  it "checks whether a string contains #TODO" do
    expect(check_text("A random string!")).to eq false
  end
  
end