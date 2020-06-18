class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :is_logged_in?, :name

  def is_logged_in?
    !!session[:name]
  end

  def name
    session[:name]
  end
end
