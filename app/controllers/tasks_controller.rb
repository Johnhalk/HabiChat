class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    @task = Task.new(task_params)
    @task.status = 'Just created'
    @task.save
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:description, :priority)
  end
end
