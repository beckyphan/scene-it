class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :require_login

  private 
  def require_login
    if session[:user_id] == nil
      flash[:message] = "You must be logged in to access that page!"
      redirect_to login_path
    end
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

   def logged_in?
     current_user != nil
   end

end
