class TaskList
  def initialize
    # returns nothing
    @task_list = []
  end
  
  def add_task(task)
    # task is a Task object
    # adds task to the task list
    # returns nothing
    @task_list << task
  end
  
  def task_done(task)
    # task is Task object
    # removes the task from the task list
    # returns nothing
    task.done()
    @task_list.delete task
  end 
  
  def tasks_remaining
    # returns all uncompleted tasks
    @task_list
  end
end