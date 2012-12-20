class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  def current_user
    session[:user] || User.find_or_create_by_name('unknown')
  end

end
