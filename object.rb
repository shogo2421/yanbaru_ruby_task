class TODO

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

class TASK
  puts task
end