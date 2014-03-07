class UsersController < ApplicationController

	def new
		if Role.all.size!=0
			@company = Company.find(params[:company].to_i)
			@user = User.new
		else
			redirect_to roles_path
		end
	end

	def create
		@company = Company.find(params[:company].to_i)
		@user = User.new(params[:user])
		@user.available = false
		@user.stillWorking = true
	    if @user.save
			@usercompany = UserCompany.new
			@usercompany.user_id = @user.id
			@usercompany.company_id = @company.id

			if @usercompany.save
				redirect_to giverole_path(@user.id)
			else
				@user.destroy
				render 'new', :flash => { :error => "Error 340. We had problems to connect the driver with the company. Please call to xxxx-xxxx or report this error by email to xxxx@xxxx.xx." }
			end
	    else
	    	render 'new', :flash => { :error => "Error 330. We had problems to save the driver account. Please call to xxxx-xxxx or report this error by email to xxxx@xxxx.xx." }
	    end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

		if @user.update(params[:user])
			redirect_to user_path(@user.id)
		else
			render 'edit'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to companies_path
	end

	def show
		@user = User.find(params[:id])
		@userroles = UserRole.where('user_id = ?',@user.id)
	end

	def giverole
		@company = Company.find(params[:company].to_i)
		@user = User.find(params[:userid])
		@roles = Role.all
	end

	def connectrole
		@company = Company.find(params[:company].to_i)
		@user = User.find(params[:userid])
		@role = Role.find(params[:roleid])

		@ucr = UserCompanyRole.new
		@ucr.user_id = @user.id
		@ucr.role_id = @role.id
		@ucr.company_id = @company.id

		if @ucr.save
			redirect_to user_path(@user.id)
		else
			render 'giverole'
		end
	end

end
