# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121219025106) do

  create_table "boards", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "boards", ["user_id"], :name => "index_boards_on_user_id"

  create_table "clips", :force => true do |t|
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "nopassword_login_sessions", :force => true do |t|
    t.string   "email"
    t.string   "hashed_code"
    t.string   "requesting_ip"
    t.string   "requesting_user_agent"
    t.string   "activating_ip"
    t.string   "activating_user_agent"
    t.boolean  "activated",             :default => false
    t.datetime "activated_at"
    t.boolean  "terminated",            :default => false
    t.datetime "terminated_at"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.string   "requesting_geo"
    t.string   "activating_geo"
  end

  create_table "postlets", :force => true do |t|
    t.integer  "board_id"
    t.integer  "clip_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "postlets", ["board_id"], :name => "index_postlets_on_board_id"
  add_index "postlets", ["clip_id"], :name => "index_postlets_on_clip_id"

  create_table "profiles", :force => true do |t|
    t.string   "bio"
    t.string   "image"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "profiles", ["user_id"], :name => "index_profiles_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
