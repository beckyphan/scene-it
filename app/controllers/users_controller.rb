class UsersController < ApplicationController

  def create
    @user = User.new(username: params[:username], password: params[:password])

    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:message] = "Login Error. Please Try Again."
      render "session/login"
    end
  end

  def show
  end

end
