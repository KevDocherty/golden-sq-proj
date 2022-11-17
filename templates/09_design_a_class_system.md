> # Multi-Class Planned Design Recipe
> 
> ## 1. Describe the Problem
> 
> Typically you will be given a short statement that does this called a user
> story. In industry, you may also need to ask further questions to clarify
> aspects of the problem.
> 
> ## 2. Design the Class System
> 
> Design the interfaces of each of your classes and how they will work together
> to achieve the job of the program. You can use diagrams to visualise the
> relationships between classes.
> 
> Consider pulling out the key verbs and nouns in the problem description to
> help you figure out which classes and methods to have.
> 
> Steps 3, 4, and 5 then operate as a cycle.
> 
> ## 3. Create Examples as Integration Tests
> 
> Create examples of the classes being used together in different situations
> and combinations that reflect the ways in which the system will be used.
> 
> Encode one of these as a test and move to step 4.
> 
> ## 4. Create Examples as Unit Tests
> 
> Create examples, where appropriate, of the behaviour of each relevant class at
> a more granular level of detail.
> 
> Encode one of these as a test and move to step 5.
> 
> ## 5. Implement the Behaviour
> 
> For each example you create as a test, implement the behaviour that allows the
> class to behave according to your example.
> 
> Then return to step 3 until you have addressed the problem you were given. You
> may also need to revise your design, for example if you realise you made a
> mistake earlier.


> ## 1. Describe the Problem

As a user  
So that I can record my experiences  
I want to keep a regular diary

As a user  
So that I can reflect on my experiences  
I want to read my past diary entries 

As a user  
So that I can reflect on my experiences in my busy day  
I want to select diary entries to read based on how much time I have and my
reading speed

As a user  
So that I can keep track of my tasks  
I want to keep a todo list along with my diary

As a user  
So that I can keep track of my contacts  
I want to see a list of all of the mobile phone numbers in all my diary
entries


> ## 2. Design the Class Interface
> 
> The interface of a class includes:
> 
> * The name of the class.
> * The design of its initializer and the parameters it takes.
> * The design of its public methods, including:
>   * Their names and purposes
>   * What parameters they take and the data types.
>   * What they return and that data type
>   * Any other side effects they might have.

Suggested classes...
Diary
DiaryEntry
TaskList
Task


```ruby
class Diary()
  def initialize
    # returns nothing
  end
  
  def add_entry(entry)
    # entry is a DiaryEntry object
    # adds an entry to the diary
    # returns nothing
  end 
  
  def read_all()
    # returns all of the diary entries
  end
  
  def best_entry(wpm, time_available)
    # wpm = reading speed (words per minute): integer
    # time_available in minutes: integer
    # returns the entry object that fits best within the users available time
  end
  
  def get_numbers()
    # returns a list of mobile phone numbers mentioned in the diary contents
  end
end

class DairyEntry
  def initialize(title, contents)
    # title & contents are strings
    # returns nothing
  end
  
  def title
    # returns the title of the diary entry
  end
  
  def contents
    # returns the contents of the diary entry
  end
  
  def numbers
    # returns the mobile phone numbers mentioned in the entry contents
  
  def contents_words
    # returns the number of words in the contents of the entry
  end
end

class TaskList
  def initialize
    # returns nothing
  end
  
  def add_task(task)
    # task is a Task object
    # adds task to the task list
    # returns nothing
  end
  
  def task_done(task)
    # task is Task object
    # removes the task from the task list
    # returns nothing
  end 
  
  def tasks_remaining
    # returns all uncompleted tasks
  end
end

class Task
  def initialize(task)
    # task is a string
    # returns nothing
  end
  
  def done
    # flags the task as being complete
  end 
  
  def details
    # returns the task as a string
  end
end


```

> ## 3. Integration tests

```ruby
# 1 - get all diary entries
diary = Diary.new
entry_1 = DiaryEntry.new("first entry","first contents")
entry_2 = DiaryEntry.new("second entry", "second contents")
diary.add_entry(entry_1)
diary.add_entry(entry_2)
diary.read_all => [entry_1, entry_2]

#2 - return the best match entry based upon time available
diary = Diary.new
entry_1 = DiaryEntry.new("first entry","one " * 100)
entry_2 = DiaryEntry.new("second entry", "two " * 200)
diary.add_entry(entry_1)
diary.add_entry(entry_2)
diary.best_entry(50,2) => entry_1

#3 - get all remaining tasks
task_list = TaskList.new
task_1 = Task.new('feed the chickens')
task_2 = Task.new('muck out the horses')
task_list.add_task(task_1)
task_list.add_task(task_2)
task_list.tasks_remaining => [task_1, task_2]

#4 - get tasks remaining after completing tasks
task_list = TaskList.new
task_1 = Task.new('feed the chickens')
task_2 = Task.new('muck out the horses')
task_list.add_task(task_1)
task_list.add_task(task_2)
task_list.task_done(task_2)
task_list.tasks_remaining => [task_1]
```

> ## 4. Unit tests

```ruby

#1 - return the title of the entry
entry = DiaryEntry.new('title','contents')
entry.title => 'title'

#2 - return the contents of the entry
entry = DiaryEntry.new('title','contents')
entry.contents => 'contents'

#3 - return any mobile phone number in the contents of the entry
entry = DiaryEntry.new('title','contents 07539 990011')
entry.numbers) => ['07539 990011']

#4 - return the details of the task
task = Task.new('feed the chickens')
task.details => 'feed the chickens'


> ## 5. Implementation