class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :auth_user!

  def auth_user!
  	if user_signed_in?
		authenticate_user!
	else
		authenticate_admin!
	end
  end
end
