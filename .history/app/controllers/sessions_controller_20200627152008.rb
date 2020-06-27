class SessionsController < ApplicationController
  def new
  end
  def create
    if params[:name]
      session[:name] = params[:name]
      redirect_to '/'
    else
      render '/sessions/new'
    end
  end
  def destroy
    session.delete :name
  end
end
