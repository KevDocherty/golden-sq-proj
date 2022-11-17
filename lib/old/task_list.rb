# File: lib/task_list.rb

class TaskList
  
  def initialize
    @task_list = []
  end
  
  def add_task(task)
    @task_list << task
  end
  
  def read_tasks()
    @task_list
  end
  
  def delete_task(task)
    fail "no such task!" if !@task_list.include? task
    #del_task = []
    #del_task << task
    @task_list.delete(task)
    @task_list
  end
  
end