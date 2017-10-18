class CorrectionRoleId < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :role_id, :integer, default: 1
    remove_column :roles, :role_id
  end
end
