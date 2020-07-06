class SessionsController < ApplicationController
  def new
    redirect_to root_path if session[:username]
  end

  def create
    if !params[:name] || params[:name].blank?
      redirect_to login_path, alert: 'Please enter your name'
    else
      session[:name] = params[:name]
      redirect_to root_path 
    end
    
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end
