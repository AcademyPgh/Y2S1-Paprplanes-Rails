# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170516165056) do

  create_table "post_accesses", force: :cascade do |t|
    t.integer "UserID"
    t.integer "PostID"
    t.integer "FriendID"
    t.boolean "Viewed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "UserID"
    t.integer "Type"
    t.string "Caption"
    t.string "Content"
    t.integer "Counter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_friends", force: :cascade do |t|
    t.integer "UserID"
    t.integer "FriendID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "Pending"
  end

  create_table "users", force: :cascade do |t|
    t.string "FirstName"
    t.string "LastName"
    t.string "ScreenName"
    t.string "Password"
    t.string "Email"
    t.string "DateOfBirth"
    t.string "ProfilePicUrl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
