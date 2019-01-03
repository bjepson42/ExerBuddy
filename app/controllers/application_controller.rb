class ApplicationController < ActionController::Base
  helper_method :current_user
  before_action :require_login
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

private

    def require_login
      unless current_user
        flash[:error] = "You must be logged on to access this."
        redirect_to root_path
      end
    end

end
