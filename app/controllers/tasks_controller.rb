class TasksController < ApplicationController

  before_action :authenticate_user!, :except => [:index]

  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    @user = current_user
    @task =  @user.tasks.new(task_params)
    @task.status = 'In progress'
    if @task.save
      redirect_to tasks_path
    else
      flash[:alert] = "A task must have a description"
      redirect_to tasks_path
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.status == "In progress"
      @task.update_attribute(:status, "Completed")
    else
      @task.update_attribute(:status, "In progress")
    end
    # @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:notice] = 'Task successfully deleted'
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:description, :priority)
  end
end
