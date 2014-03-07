class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :serial
      t.boolean :finished

      t.timestamps
    end
  end
end
