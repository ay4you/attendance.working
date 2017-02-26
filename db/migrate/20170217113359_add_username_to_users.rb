class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :fullname, :string
    add_index :users, :username, unique: true
    add_index :users, :fullname, unique: true
  end
end
