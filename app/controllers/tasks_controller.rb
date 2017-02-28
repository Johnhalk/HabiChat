class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    @task = Task.new(task_params)
    @task.status = 'Just created'
    if @task.save
      redirect_to tasks_path
    else
      flash[:alert] = "A task must have a description"
      redirect_to tasks_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:description, :priority)
  end
end
