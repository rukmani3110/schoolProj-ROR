class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?
  helper_method :authorized
  def current_user
    Admin.find_by(id: session[:user_id])
end
def authorized
   redirect_to '/welcome' unless logged_in?
end

def logged_in?

    !current_user.nil?
end
end
