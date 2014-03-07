class RolesController < ApplicationController

	def index
		if session[:user_id] == 0.5
			@roles = Role.all
		else
			@user = User.find(session[:user_id].to_i)
			@companies = @user.companies
		end
	end

	def new
		@role = Role.new
	end

	def create
		@role = Role.new(params[:role])

		if @role.save
			redirect_to roles_path
		else
			render 'new'
		end
	end

	def edit
		@role = Role.find(params[:id])
	end

	def update
		@role = Role.find(params[:id])

		if @role.update(params[:role])
			redirect_to roles_path
		else
			render 'edit'
		end
	end

	def destroy
		@role = Role.find(params[:id])
		@role.destroy
	end

end
