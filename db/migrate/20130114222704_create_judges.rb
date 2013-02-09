class CreateJudges < ActiveRecord::Migration
  def change
    create_table :judges do |t|
      t.string :jfirstName
      t.string :jlastName
      t.string :debate_exp
      t.integer :school_id

      t.timestamps
    end
  end
end
