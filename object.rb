#タスクの作成
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

  #作成されたタスクをタスク一覧の配列に格納
  def add(task)
    @tasks << task
  end
  
  #タスク一覧を表示
  def index
    puts "タスク一覧"
    @tasks.each do |task|
      puts "id:#{task.id} #{task.name}(#{task.detail})"
    end
    puts "------------------------------------------------"
  end

  #指定されたタスクの削除
  def delete(id:)
    task = @tasks.find{|task| task.id === id}
    @tasks.delete(task)
    puts "id:#{id}のタスクが削除されました。"
  end
end

#以下、処理をするためのコード
todo = Todo.new
task1 = Task.new(name: "筋トレ", detail: "ベンチプレス")
todo.add(task1)
task2 = Task.new(name: "勉強", detail: "プログラミング")
todo.add(task2)
task3 = Task.new(name: "食事", detail: "ラーメン")
todo.add(task3)
todo.index
todo.delete(id: 1)
todo.index