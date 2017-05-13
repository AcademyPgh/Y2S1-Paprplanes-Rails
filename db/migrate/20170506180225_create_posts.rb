class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :UserID
      t.integer :Type
      t.string :Caption
      t.string :Content
      t.integer :Counter

      t.timestamps
    end
  end
end
