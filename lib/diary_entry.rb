class DiaryEntry
  def initialize(title, contents)
    # title & contents are strings
    # returns nothing
    #@entry = []
    @title = title
    @contents = contents
    @numbers = []
  end
  
  def title
    # returns the title of the diary entry
    @title
  end
  
  def contents
    # returns the contents of the diary entry
    @contents
  end
  
  def numbers
    # returns any mobile phone numbers mentioned in the entry contents
    if @contents.include? "07" 
      index = @contents.index '0'
      @numbers << @contents[index .. (index + 12)]
    end
    @numbers
  end
  
  def contents_words
    # returns the number of words in the contents of the entry
    @contents.split(" ").length
  end
end