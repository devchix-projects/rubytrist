class SessionsController < ApplicationController
  def create
    user = User.find_or_create_by_name(params[:name])
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Logged in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
  
  
end
