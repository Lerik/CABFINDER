class CreateCompanyCodes < ActiveRecord::Migration
  def change
    create_table :company_codes do |t|
      t.references :company, index: true
      t.references :code, index: true

      t.timestamps
    end
  end
end
