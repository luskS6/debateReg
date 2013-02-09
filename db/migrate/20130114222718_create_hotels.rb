class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.integer :twoRooms
      t.integer :fourRooms
      t.integer :school_id

      t.timestamps
    end
  end
end
