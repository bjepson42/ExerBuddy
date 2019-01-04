class ApplicationController < ActionController::Base
  helper_method :current_user, :google_map, :google_map_dynamic, :sign_up_for_event, :leave_event, :event_belongs_to_active_user, :event_filled, :active_user_is_buddy, :time_format
  before_action :require_login
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def time_format(datetime)
    datetime.strftime("%b %e, %y %l:%m %p")
  end

  def event_belongs_to_active_user(event)
    current_user.id == event.user_id
  end

  def active_user_is_buddy(event)
    current_user.id == event.friend_user_id
  end

  def event_filled(event)
    event.user_id && event.friend_user_id
  end


  def google_map(center)
    "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=300x300&zoom=17&markers=color:red%7Clabel:%7C#{center}&key=AIzaSyA3inP1j57jSJe-CsU8Nbo2-boaUjiifns"
    ##api key AIzaSyA3inP1j57jSJe-CsU8Nbo2-boaUjiifns
  end

  def google_map_dynamic(center)
    "https://www.google.com/maps/embed/v1/place?key=AIzaSyA3inP1j57jSJe-CsU8Nbo2-boaUjiifns&q=#{center}"
  end

  def sign_up_for_event(event)
    byebug
    event.friend_user_id = current_user.id
    event.save
    redirect_to events_path
  end

  # def sign_up_for_event(event)
  #   byebug
  # end

  def leave_event(event)
    event.friend_user_id = nil
    event.save
  end

private

    def require_login
      unless current_user
        flash[:error] = "You must be logged on to access this."
        redirect_to root_path
      end
    end

end
