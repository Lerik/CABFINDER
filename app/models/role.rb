class Role < ActiveRecord::Base
	include ActiveModel::ForbiddenAttributesProtection
	has_many :users

	attr_accessible :name

	validates_presence_of :name
	validates_uniqueness_of :name
end
