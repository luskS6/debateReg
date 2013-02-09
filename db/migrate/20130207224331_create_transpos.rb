class CreateTranspos < ActiveRecord::Migration
  def change
    create_table :transpos do |t|
      t.boolean :fpickup
      t.time :fpickup_time
      t.integer :fpickup_number
      t.boolean :spickup
      t.time :spickup_time
      t.integer :spickup_number
      t.boolean :sdropoff
      t.time :sdropoff_time
      t.integer :sdropoff_number
      t.integer :school_id

      t.timestamps
    end
  end
end
