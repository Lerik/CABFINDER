class CreateUserCompanyRoles < ActiveRecord::Migration
  def change
    create_table :user_company_roles do |t|
      t.references :user, index: true
      t.references :company, index: true
      t.references :role, index: true

      t.timestamps
    end
  end
end
