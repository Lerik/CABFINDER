class CompanyCode < ActiveRecord::Base
  belongs_to :company
  belongs_to :code
end
