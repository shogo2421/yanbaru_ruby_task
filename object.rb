class Todo
  attr_accessor :task, :id, :detail
  def initialize(task, id, detail)
    @task = task
    @id = id
    @detail = detail
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

task1 = Todo.new("筋トレ", 1, "ベンチプレス")
puts <<~TEXT
#{task1.task}
#{task1.id}
#{task1.detail}
TEXT