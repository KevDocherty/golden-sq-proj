# File: spec/todo_integration_spec.rb

require "todo_list"
require "todo"

RSpec.describe "Todo integration" do
  it "gets all incomplete todo's" do
    task_list = TodoList.new
    task_1 = Todo.new("feed the cat")
    task_2 = Todo.new("empty the trash")
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.incomplete).to eq [task_1, task_2]
  end
end
    