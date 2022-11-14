# File: spec/task_list_spec.rb

require "task_list"

RSpec.describe TaskList do
  it "creates a new task list" do
    tasks = TaskList.new()
    expect(tasks.read_tasks()).to eq []
  end
  
  it "adds a task" do
    tasks = TaskList.new()
    tasks.add_task("Buy milk")
    expect(tasks.read_tasks()).to eq ["Buy milk"]
  end
  
  it "deletes a task" do
    tasks = TaskList.new()
    tasks.add_task("Buy milk")
    tasks.add_task("Buy bread")
    tasks.delete_task("Buy milk")
    expect(tasks.read_tasks()).to eq ["Buy bread"]
  end
  
  context "task does not exist" do
    it "fails" do
      tasks = TaskList.new()
      expect { tasks.delete_task("Buy milk") }.to raise_error "no such task!"
    end
  end
end
'''
tasks = TaskList.new()
tasks.read_tasks() # => []

# 2.
tasks = TaskList.new()
tasks.add_task("Buy milk")
tasks.read_tasks() # => "Buy milk"

# 3. 
tasks = TaskList.new()
tasks.add_task("Buy milk")
tasks.add_task("Buy bread")
tasks.delete_task("Buy milk")
tasks.read_tasks() # => []


# 4.
tasks = TaskList.new()
tasks.add_task("Buy milk")
tasks.delete_task("Buy bread") # => fail: "no such task"
'''