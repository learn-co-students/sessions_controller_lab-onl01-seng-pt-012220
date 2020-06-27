class SessionsController < ApplicationController
  def new
  end
  
  def create
    if sessions[:name] == nil
      render '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end
end
