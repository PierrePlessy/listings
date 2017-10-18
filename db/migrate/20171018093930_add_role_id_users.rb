class AddRoleIdUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :roles, :role_id, :integer ,default: 1
  end
end
