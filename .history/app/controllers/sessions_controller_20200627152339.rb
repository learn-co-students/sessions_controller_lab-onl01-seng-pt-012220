class SessionsController < ApplicationController
  def new
    if params[:name] == nil
      render '/sessions/new'
    else
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
