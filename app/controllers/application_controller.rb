class ApplicationController < ActionController::Base
  protect_from_forgery

  #def after_sign_in_path_for(resource)
  #  "/" # <- Path you want to redirect the user to.
  #end

  def week_from_now
    current_time = Time.now
    beginning_of_hour = current_time.change(:hour => current_time.hour)
    beginning_of_next_hour = beginning_of_hour - 4.hours # Include offset for EST -0500
    beginning_of_next_hour + 1.week
  end
end
