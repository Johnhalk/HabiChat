class RegistrationController < Devise::RegistrationsController

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.username = params[:user][:username]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    if @user.save
      sign_in @user
      redirect_to tasks_path
    else
      render :action => "new"
    end
  end

end
