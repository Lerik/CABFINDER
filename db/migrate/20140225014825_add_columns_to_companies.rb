class AddColumnsToCompanies < ActiveRecord::Migration
  def change
  	add_column :companies, :number1, :integer
  	add_column :companies, :number2, :integer
  	add_column :companies, :email, :string
  end
end
