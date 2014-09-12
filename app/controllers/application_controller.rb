class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authorize
  
  def authorize
    if current_user.nil?
      redirect_to login_path
    end
  end

  # This method is available in all controllers.
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  helper_method :current_user
  
end
