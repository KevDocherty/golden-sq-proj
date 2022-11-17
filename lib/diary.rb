# File: lib/diary.rb

class Diary
  def initialize
    # returns nothing
    @diary = []
  end
  
  def add_entry(entry)
    # entry is a DiaryEntry object
    # adds an entry to the diary
    # returns nothing
    @diary << entry
  end 
  
  def read_all()
    # returns all of the diary entries
    @diary
  end
  
  def best_entry(wpm, time_available)
    # wpm = reading speed (words per minute): integer
    # time_available in minutes: integer
    # returns the entry object that fits best within the users available time
    max_words = wpm * time_available
    best_words = 0
    best_match = nil
    @diary.each do |entry|
      if (entry.contents_words <= max_words) && (entry.contents_words > best_words)
        best_match = entry
        best_words = entry.contents_words
      end
    end
    best_match
  end
end