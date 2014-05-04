class AddTimestampsToPages < ActiveRecord::Migration
  def change
    change_table :pages do |t|
      t.timestamps
    end
  end
end
