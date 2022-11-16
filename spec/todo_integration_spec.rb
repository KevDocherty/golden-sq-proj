# File: spec/todo_integration_spec.rb

require "todo_list"
require "todo"

RSpec.describe "Todo integration" do
  
  it "gets all incomplete todo's" do
    todo_list = TodoList.new
    todo_1 = Todo.new("feed the cat")
    todo_2 = Todo.new("empty the trash")
    todo_list.add(todo_1)
    todo_list.add(todo_2)
    expect(todo_list.incomplete).to eq [todo_1, todo_2]
  end
  
  it "gets all complete todo's" do
    todo_list = TodoList.new
    todo_1 = Todo.new("feed the cat")
    todo_2 = Todo.new("empty the trash")
    todo_list.add(todo_1)
    todo_list.add(todo_2)
    #expect(todo_list.incomplete).to eq [todo_1, todo_2]
    todo_1.mark_done()
    #p todo_2.done()
    expect(todo_list.complete).to eq [todo_1]
  end
  
  it "gives up!" do
    todo_list = TodoList.new
    todo_1 = Todo.new("feed the cat")
    todo_2 = Todo.new("empty the trash")
    todo_list.add(todo_1)
    todo_list.add(todo_2)
    #expect(todo_list.incomplete).to eq [todo_1, todo_2]
    #todo_1.mark_done()
    #p todo_2.done()
    todo_list.give_up()
    #p todo_list
    expect(todo_list.complete()).to eq [todo_1, todo_2]
  end
  
end
    