class CompaniesController < ApplicationController
	
	def index
		if session[:user_id] == nil
			redirect_to root_url
		end

		if session[:user_id] == 0.5
			@companies = Company.all
		else
			@user = User.find(session[:user_id].to_i)
			@companies = @user.companies
		end
	end

	def new
		@company = Company.new
	end

	def create
		@company = Company.new(params[:company])
		@company.exist = true

		if @company.save
			redirect_to company_path(@company.id)
		else
			render 'new'
		end
	end

	def edit
		@company = Company.find(params[:id])
	end

	def update
		@company = Company.find(params[:id])

		if @company.update(params[:company])
			redirect_to company_path(@company.id)
		else
			render 'edit'
		end
	end

	def destroy
		@company = Company.find(params[:id])
		@company.destroy
		redirect_to companies_path
	end

	def show
		@company = Company.find(params[:id])
		@usercompanies = UserCompany.where('company_id = ?',@company.id)
	end

end
