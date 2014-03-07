class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :logged_in?

  	private
	def current_user
		@current_user = nil
		if session[:user_id]!=nil
			if session[:user_id]==0.5
				@current_user = 0.5
			else
				@current_user = User.find(session[:user_id])
			end
		end
	end

	def logged_in?
		current_user != nil
	end
end
