# File: lib/todo_list.rb
class TodoList
  def initialize
    @todo_list = []
    @complete_todos = []
    @incomplete_todos = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @todo_list << todo
  end

  def incomplete
    # Returns all non-done todos
    @todo_list.each do |todo|
      if todo.done() == false
        @incomplete_todos << todo
      end
    end
    @incomplete_todos
  end

  def complete
    # Returns all complete todos
    @todo_list.each do |todo|
      if todo.done() == true
        @complete_todos << todo
      end
    end
    return @complete_todos
  end

  def give_up
    # Marks all todos as complete
    @todo_list.each do |todo|
      todo.mark_done()
    end
  end
end