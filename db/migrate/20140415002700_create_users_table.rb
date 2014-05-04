class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users_tables do |t|
      
      t.string :username
      t.string :password_digest
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :gender
      t.text :about
      t.integer :birth_month
      t.integer :birth_day
      t.integer :birth_year
      t.string :interested_in




      t.string :slug
      t.index :slug
      t.timestamps

    end
  end
end
