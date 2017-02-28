class CommentsController < ApplicationController

  def new
    @task = Task.find(params[:task_id])
    @comment = Comment.new
  end

  def create
    @task = Task.find(params[:task_id])
    @task.comments.create(comment_params)
    redirect_to tasks_path
  end


  private

  def comment_params
    params.require(:comment).permit(:comments)
  end

end
