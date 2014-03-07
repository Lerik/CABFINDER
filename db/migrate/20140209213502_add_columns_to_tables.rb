class AddColumnsToTables < ActiveRecord::Migration
  def change
  	add_column :user_roles, :user_id, :integer
    add_index :user_roles, :user_id

    add_column :user_roles, :role_id, :integer
    add_index :user_roles, :role_id

    add_column :phoneinfos, :user_id, :integer
    add_index :phoneinfos, :user_id

    add_column :users, :available, :boolean
    add_column :users, :stillWorking, :boolean
  end
end
