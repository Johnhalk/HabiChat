class CommentsController < ApplicationController

  def new
    @task = Task.find(params[:task_id])
    @comment = Comment.new
  end

  def create
    @task = Task.find(params[:task_id])
    @comment = @task.comments.new(comment_params)
    if @comment.save
      redirect_to tasks_path
    else
      flash[:alert] = "A comment must have text"
      redirect_to tasks_path
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:comments)
  end

end
