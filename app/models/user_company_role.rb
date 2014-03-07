class UserCompanyRole < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  belongs_to :role

  attr_accessible :user_id, :company_id, :role_id
end
