class CreatePhoneinfos < ActiveRecord::Migration
  def change
    create_table :phoneinfos do |t|
      t.integer :number
      t.string :macaddress

      t.timestamps
    end
  end
end
