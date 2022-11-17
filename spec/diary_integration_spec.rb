# File spec/diary_integration_spec.rb

require "diary"
require "diary_entry"

RSpec.describe Diary do
  it "gets all diary entries" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("first entry","first contents")
    entry_2 = DiaryEntry.new("second entry", "second contents")
    diary.add_entry(entry_1)
    diary.add_entry(entry_2)
    expect(diary.read_all).to eq [entry_1, entry_2]
  end
  
  it "returns the best match entry based upon time available" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("first entry","one " * 100)
    entry_2 = DiaryEntry.new("second entry", "two " * 200)
    diary.add_entry(entry_1)
    diary.add_entry(entry_2)
    expect(diary.best_entry(50,2)).to eq entry_1
  end
end
  
