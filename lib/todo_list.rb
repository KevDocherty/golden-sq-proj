# File: lib/todo_list.rb
class TodoList
  def initialize
    @todo_list = []
    @complete_todos = []
    @uncomplete_todos = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @todo_list << todo
  end

  def incomplete
    # Returns all non-done todos
    @todo_list.each do |todo|
      if todo.done() == false
        @uncomplete_todos << todo
        #@todo_list.delete(todo)
      end
    end
    @uncomplete_todos
  end

  def complete
    # Returns all complete todos
    @todo_list.each do |todo|
      #count += entry.count_words
      if todo.done() == true
        @complete_todos << todo
        #@todo_list.delete(todo)
      end
    end
    #p @complete_todos
    #p @todo_list
    return @complete_todos
  end

  def give_up
    # Marks all todos as complete
    @todo_list.each do |todo|
      #count += entry.count_words
      todo.mark_done()
      #@complete_todos << todo
      #@todo_list.delete(todo)
    end
  end
end