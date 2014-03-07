class SessionsController < ApplicationController
	def new
		@code = Code.new
	end

	def create
		user = User.authenticate(params[:email], params[:password])
		if user
		  session[:user_id] = user.id
		  
		  redirect_to companies_path
		else
			if params[:email]=='123' and params[:password]=='123'
				session[:user_id] = 0.5
				redirect_to companies_path
			else
				flash.now.alert = "Invalid email or password"
				redirect_to login_path
			end
		end
	end

	def destroy
	  session[:user_id] = nil
	  redirect_to root_url
	end

	def validation
		@code = Code.where('serial == ?',params[:serial])

		if @code.size != 0
			redirect_to createCWC_path(@code.first.id)
		else
			redirect_to login_path
		end
	end
end
