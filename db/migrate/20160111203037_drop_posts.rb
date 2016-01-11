class DropPosts < ActiveRecord::Migration
  def up
    drop_table :posts
  end

  def down
  	fail ActiveRecord::IrreversibleMigration
  end
end
