class ApplicationController < ActionController::Base
  protect_from_forgery

  expose(:publisher) do
    if session[:publisher_id].blank?
      session[:publisher_id] ||= 1
    end
    Publisher.find session[:publisher_id]
  end
end
