class AddRoleIdToUser < ActiveRecord::Migration
  def change
    add_column  :users, :roles, :string, :default => 0
    add_reference :users, :role, index: true, foreign_key: true
  end
end
