class Task
  def initialize(task)
    # task is a string
    # returns nothing
    @done = false
    @task = task
  end
  
  def done
    # flags the task as being complete
    @done = true
  end 
  
  def details
    # returns the task as a string
    @task
  end
end
