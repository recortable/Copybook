class ApplicationController < ActionController::Base
  protect_from_forgery

  include AuthMethods
  helper_method :current_user, :current_user?

  expose(:current_publisher) do
    if session[:publisher_id].blank?
      session[:publisher_id] ||= 1
    end
    Publisher.find session[:publisher_id]
  end
end
