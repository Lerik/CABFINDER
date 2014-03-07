class Phoneinfo < ActiveRecord::Base
	belongs_to :user
	attr_accessible :number

	validates_presence_of :number
	validates_uniqueness_of :number
end
