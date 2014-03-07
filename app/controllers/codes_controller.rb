class CodesController < ApplicationController

	def list
		@codes = Code.all
	end

	def new
		@code = Code.new
		randomValue = rand(40).to_s
		randomValue += rand(30).to_s
		randomValue += rand(20).to_s
		randomValue += rand(10).to_s
		randomValue += rand(20).to_s
		randomValue += rand(30).to_s
		randomValue += rand(40).to_s
		randomValue += rand(50).to_s
		@code.serial = randomValue
		@code.finished = false
		@code.save

		redirect_to listcodes_path
	end

	
end
