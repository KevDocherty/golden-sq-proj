# File spec/diary_entry_spec.rb

require "diary_entry"

RSpec.describe "diary entry" do
  it "returns the title of the entry" do
    entry = DiaryEntry.new('title','contents')
    expect(entry.title).to eq 'title'
  end
  
  it "returns the contents of the entry" do
    entry = DiaryEntry.new('title','contents')
    expect(entry.contents).to eq 'contents'
  end
  
  it "returns the any mobile phone numbers in the contents of the entry" do
    entry = DiaryEntry.new('title','contents 07539 990011')
    expect(entry.numbers).to eq ['07539 990011']
  end
  
end