# File: lib/diary_entry.rb

class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    # fail "no title supplied" if @title.empty?
    @title = title
    # fail "no contents provided" if @contents == ""
    @contents = contents
    @words_read = 0
  end

  def title
    # Returns the title as a string
    @title
  end

  def contents
    # Returns the contents as a string
    @contents
  end

  def count_words
    # Returns the number of words in the contents as an integer
    @contents.split(" ").length
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
    return (count_words / wpm).ceil
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    words_to_read = wpm * minutes
    chunk = contents.split(" ")[@words_read ... (@words_read + words_to_read)]
    @words_read += words_to_read
    # puts chunk
    chunk
  end
end