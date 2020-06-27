class SessionsController < ApplicationController
  def new
  end
  def create
    session[:name] = params[:name]
    redirect_to '/'
  end
  def destroy
    session.delete :name
  end
  def post_create
    if session[:name] == nil || session[:name].empty?
      redirect_to '/new'
    end
  end
end
