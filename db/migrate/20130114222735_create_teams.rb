class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :teamName
      t.string :tfirstName1
      t.string :tlastName1
      t.string :tfirstName2
      t.string :tlastName2
      t.string :tseed
      t.string :texp
      t.integer :school_id

      t.timestamps
    end
  end
end
