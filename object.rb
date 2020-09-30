class Todo
  attr_accessor :task
  def initialize(task)
    @task = task
  end

  def add
    @tasks = @task
  end
  
  def index
    @tasks.each do |task|
      puts task
    end
  end

  def delete
    @task.destroy
  end
end

class Task
  puts @tasks
end

task1 = Todo.new("筋トレ")
puts task1.task
task1.add
task1.index