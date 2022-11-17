# File: spec/diary_entry_spec.rb

require 'diary_entry'

RSpec.describe DiaryEntry do
  
  '''context "no title provided" do
    it "fails" do
      diary_entry = DiaryEntry.new("", "nardle, nurdle, noo, " * 300)
      expect { diary_entry.title }.to raise_error "no title supplied"
    end
  end'''
  
  it "checks contents" do
    diary_entry = DiaryEntry.new("Monday 14th", "nardle, nurdle, noo, " * 300)
    contents = diary_entry.contents
    expect(contents).to eq "nardle, nurdle, noo, " * 300
  end
  
  it "checks title" do
    diary_entry = DiaryEntry.new("Monday 14th", "nardle, nurdle, noo, " * 300)
    title = diary_entry.title
    expect(title).to eq "Monday 14th"
  end
  
  it "tests word count" do
    diary_entry = DiaryEntry.new("Monday 14th", "nardle, nurdle, noo, " * 300)
    #puts ("nardle nurdle noo" * 300).split(" ").length
    expect(diary_entry.count_words).to eq 900
  end
  
  it "tests reading time" do
    diary_entry = DiaryEntry.new("Monday 14th", "nardle, nurdle, noo, " * 300)
    wpm = 300
    time_to_read_contents = diary_entry.reading_time(wpm)
    expect(time_to_read_contents).to eq  3
  end
  
  it "reads a chunk of the content" do
    diary_entry = DiaryEntry.new("Monday 14th", "nardle, nurdle, noo, " * 300)
    wpm = 200
    minutes = 3
    expect(diary_entry.reading_chunk(wpm, minutes).length).to eq minutes*wpm
  end
  
end