class RegistrationController < Devise::RegistrationsController

  def new
    @user= User.new
  end

  def create
    @user = User.new
    p "here!"
    @user.username = params[:user][:username]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation =params[:user][:password_confirmation]
    if @user.errors.blank?
      @user.save
      p @user
      p @user.username
      redirect_to tasks_path
    else
      render :action => "new"
    end
  end

end
