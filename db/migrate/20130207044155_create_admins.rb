class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.boolean :early_invoice
      t.string :phoneNum1
      t.string :contact1
      t.string :phoneNum2
      t.string :contact2
      t.integer :school_id

      t.timestamps
    end
  end
end
