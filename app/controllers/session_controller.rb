class SessionController < ApplicationController
  def signup
    @user = User.new
  end

  def login
    @user = User.new
  end

  def authenticate
    @user = User.find_by(username: params[:username])

    if @user.try(:authenticate, params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(current_user.id)
    else
      flash[:message] = "Incorrect login credentials. Please try again."
      redirect_to login_path
    end
  end

  def logout
    session.delete(:user_id)

    redirect_to root_path
  end

end
