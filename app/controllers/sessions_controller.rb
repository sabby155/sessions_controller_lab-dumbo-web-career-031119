class SessionsController < ApplicationController
  def new
  end
  
  def create 
    if params[:name]
    session[:name] = params[:name]
    redirect_to '/'
  else 
    redirect_to 'hello'
  end 
  
  def destroy 
    
  end   
end
