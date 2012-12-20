class SessionsController < ApplicationController
  def create
    session[:user] = User.find_or_create_by_name(params[:name])
    render :show
  end

  def show
  end
end
