# File  spec/task_spec.rb

require "task"

RSpec.describe Task do
  it "gets the task details" do
    task = Task.new('feed the chickens')
    expect(task.details).to eq 'feed the chickens'
  end
end