class DropComments < ActiveRecord::Migration
  def change
  	drop_table :comments
  end

  def down
  	fail ActiveRecord::IrreversibleMigration
  end
end
