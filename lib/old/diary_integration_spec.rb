# File spec/diary_integration_spec.rb

require "diary"
require "diary_entry"

RSpec.describe "Diary Integration" do
  it "gets all entries" do
    diary = Diary.new()
    entry_1 = DiaryEntry.new("Mon 14 Nov 2022", "Busy at Makers!")
    entry_2 = DiaryEntry.new("Tues 15 Nov 2022", "Working on 8 - test driving a class system!")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.all).to eq [entry_1, entry_2]
  end
  
  it "counts all words in diary contents" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("Mon 14 Nov 2022", "Busy at Makers!")
    entry_2 = DiaryEntry.new("Tues 15 Nov 2022", "Working on 8 - test driving a class system!")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.count_words()).to eq 12
  end
  
  it "returns the time to read every entry" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("Mon 14 Nov 2022", "Busy at Makers!")
    entry_2 = DiaryEntry.new("Tues 15 Nov 2022", "Working on 8 - test driving a class system!")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.reading_time(5)).to eq 3
  end
  
  it "finds the diary entry which can be read in the time available" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("Mon 14 Nov 2022", "Busy at Makers! ")
    entry_2 = DiaryEntry.new("Tues 15 Nov 2022", "Working on 8 - test driving a class system!")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.find_best_entry_for_reading_time(2,2)).to eq entry_1
  end
  
end