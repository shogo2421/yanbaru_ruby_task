class Task
  attr_accessor :name, :id, :detail
  def initialize(params)
    @task = params[:name]
    @id = params[:id]
    @detail = params[:detail]
  end
end

class Todo
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end
  
  def index
    @tasks.each do |task|
      puts "id:#{task.id} #{task.name}(#{task.detail})"
    end
  end

  def delete(task)
    @tasks[task].destroy
  end
end

todo = Todo.new
task1 = Task.new(name: "筋トレ", id: 1, detail: "ベンチプレス")
todo.add(task1)
todo.index
