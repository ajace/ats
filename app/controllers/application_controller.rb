class ApplicationController < ActionController::Base
	protect_from_forgery
	
	# force_ssl; TO implement
  	helper_method :current_user

	private

	def current_user
	   @current_user  ||= User.find(session[:user_id]) if session[:user_id]
	end
	
	def authenticate
    	redirect_to login_url, alert: "Not authorized" if current_user.nil?
  	end
end
