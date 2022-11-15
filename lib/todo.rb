# File: lib/todo.rb
class Todo
  def initialize(task) # task is a string
    @todo = task
  end

  def task
    # Returns the task as a string
    return @todo
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
  end
end