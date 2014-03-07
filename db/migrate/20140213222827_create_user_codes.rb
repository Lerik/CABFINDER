class CreateUserCodes < ActiveRecord::Migration
  def change
    create_table :user_codes do |t|
      t.references :user, index: true
      t.references :code, index: true

      t.timestamps
    end
  end
end
