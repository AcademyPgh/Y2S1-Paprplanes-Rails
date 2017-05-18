class AddColumnToUserFriends < ActiveRecord::Migration[5.1]
  def change
    change_table :user_friends do |t|
    t.boolean :Pending
    end
  end
end
