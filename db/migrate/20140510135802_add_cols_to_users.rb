class AddColsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :race, :string
    add_column :users, :email, :string
    add_column :users, :seeking, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
