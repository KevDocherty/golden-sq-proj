# File  spec/task_list_spec.rb

require "task_list"
require "task"

RSpec.describe TaskList do
  
  it "returns all outstanding tasks" do
    task_list = TaskList.new
    task_1 = Task.new('feed the chickens')
    task_2 = Task.new('muck out the horses')
    task_list.add_task(task_1)
    task_list.add_task(task_2)
    expect(task_list.tasks_remaining).to eq [task_1, task_2]
  end
  
  it " returns tasks remaining after completing tasks" do
    task_list = TaskList.new
    task_1 = Task.new('feed the chickens')
    task_2 = Task.new('muck out the horses')
    task_list.add_task(task_1)
    task_list.add_task(task_2)
    task_list.task_done(task_2)
    expect(task_list.tasks_remaining).to eq [task_1]
  end
  
end

