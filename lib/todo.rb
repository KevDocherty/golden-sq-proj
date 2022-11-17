# File: lib/todo.rb
class Todo
  def initialize(task) # task is a string
    @todo = task
    @done = false
  end

  def task
    # Returns the task as a string
    return @todo
  end

  def mark_done
    # Marks the todo as done
    @done = true
    # Returns nothing
  end

  def done
    # Returns true if the task is done
    # Otherwise, false
    @done
  end
end