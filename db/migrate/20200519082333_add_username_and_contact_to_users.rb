class AddUsernameAndContactToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :contact, :string
    add_index :users, :username, unique: true
  end
end
