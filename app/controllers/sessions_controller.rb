class SessionsController < ApplicationController
  def new
  end
  
  def create 
    if params[:name] 
      session[:name] = params[:name]
      redirect_to '/'
    elsif !params[:name] || params[:name].empty?
      redirect_to controller: 'sessions', action: 'new'
    end
  end 
  
  def destroy 
    session.delete :name
  end   
end
