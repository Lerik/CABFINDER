class AddColumnsToTable < ActiveRecord::Migration
  def change
  	remove_column :phoneinfos, :macaddress, :string
  end
end
