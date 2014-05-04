class Pages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :content
      t.string :title
      t.string :slug
    end
  end
end
