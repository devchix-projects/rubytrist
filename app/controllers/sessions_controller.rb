class SessionsController < ApplicationController
  def create
    session[:user] = User.find_or_create_by_name(params[:name])
    redirect_to boards_path
  end

  def show
    
  end
end
