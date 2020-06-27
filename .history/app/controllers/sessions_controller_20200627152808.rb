class SessionsController < ApplicationController
  def new
    if session[:name] == nil
      render '/sessions/new'
    end
  end
  def create
    if params[:name] == nil
      redirect_to '/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end
  def destroy
    session.delete :name
  end
end
