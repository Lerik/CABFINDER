class Company < ActiveRecord::Base
	include ActiveModel::ForbiddenAttributesProtection
	attr_accessible :name, :address, :exist, :number1, :number2

	has_many :usercompanies
  	has_many :users, through: :usercompanies

	validates_presence_of :name
	validates_presence_of :address
	validates_presence_of :number1
end
