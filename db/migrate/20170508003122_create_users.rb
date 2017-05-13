class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :FirstName
      t.string :LastName
      t.string :ScreenName
      t.string :Password
      t.string :Email
      t.string :DateOfBirth
      t.string :ProfilePicUrl

      t.timestamps
    end
  end
end
