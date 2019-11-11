class SessionController < ApplicationController
  def signup
    @user = User.new
  end

  def login
    @user = User.find_by_id(params[:username])

    if @user.try(:authenticate, params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@current_user)
    else
      flash[:error] = "Incorrect login credentials. Please try again."
      redirect_to login_path
    end
  end

  def logout
    session.delete(:user_id)

    redirect_to root_path
  end

end
