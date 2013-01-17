class SessionsController < ApplicationController
  def create
    session[:user] = User.find_or_create_by_name(params[:name])
    redirect_to root_url, :notice => "Logged in!"
  end

  def destroy
    session[:user] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
  
  
end
