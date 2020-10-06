class Task
  attr_accessor :name, :id, :detail
  @@count = 0
  def initialize(**params)
    @id = @@count += 1
    @task = params[:name]
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

  def delete(id:)
    task = @tasks.find{|task| task.id === id}
    @tasks.delete(task)
  end
end

todo = Todo.new
task1 = Task.new(name: "筋トレ", id: 1, detail: "ベンチプレス")
todo.add(task1)
todo.index
todo.delete(id: 1)