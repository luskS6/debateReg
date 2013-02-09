class CreateReqs < ActiveRecord::Migration
  def change
    create_table :reqs do |t|
      t.integer :school_id
      t.text :diet
      t.text :special

      t.timestamps
    end
  end
end
