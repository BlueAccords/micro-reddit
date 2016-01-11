class AddCommentsRefToUsers < ActiveRecord::Migration
  def change
  	add_reference :users, :comments, index: true, foreign_key: true
  end
end
