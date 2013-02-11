class AddRoleIdToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :role_id, :integer
  end
end
