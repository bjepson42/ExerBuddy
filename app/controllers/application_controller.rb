class ApplicationController < ActionController::Base
  helper_method :current_user, :google_map
  before_action :require_login
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end


  def google_map(center)
    "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=300x300&zoom=17&markers=color:red%7Clabel:%7C#{center}&key=AIzaSyA3inP1j57jSJe-CsU8Nbo2-boaUjiifns"
    ##api key AIzaSyA3inP1j57jSJe-CsU8Nbo2-boaUjiifns
  end

private

    def require_login
      unless current_user
        flash[:error] = "You must be logged on to access this."
        redirect_to root_path
      end
    end

end
