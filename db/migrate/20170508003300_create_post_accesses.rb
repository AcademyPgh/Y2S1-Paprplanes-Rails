class CreatePostAccesses < ActiveRecord::Migration[5.1]
  def change
    create_table :post_accesses do |t|
      t.integer :UserID
      t.integer :PostID
      t.integer :FriendID
      t.boolean :Viewed

      t.timestamps
    end
  end
end
