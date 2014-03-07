class AddColumnsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :number1, :integer
  	add_column :users, :number2, :integer
  end
end
