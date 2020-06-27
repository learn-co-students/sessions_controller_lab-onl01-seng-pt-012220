class SessionsController < ApplicationController
  def new
    byebug
    if session[:name] == nil
      render '/sessions/new'
    end
  end
  def create
      session[:name] = params[:name]
      redirect_to '/'
  end
  def destroy
    session.delete :name
  end
end
