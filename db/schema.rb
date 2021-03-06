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

ActiveRecord::Schema.define(:version => 20140305174523) do

  create_table "authentications", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ratings", :force => true do |t|
    t.integer  "score"
    t.integer  "submission_id"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "ratings", ["submission_id"], :name => "index_ratings_on_submission_id"
  add_index "ratings", ["user_id"], :name => "index_ratings_on_user_id"

  create_table "submissions", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.string   "url"
    t.boolean  "agreed",                  :default => false
    t.boolean  "approved",                :default => false
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.string   "screenshot_file_name"
    t.string   "screenshot_content_type"
    t.integer  "screenshot_file_size"
    t.datetime "screenshot_updated_at"
  end

  add_index "submissions", ["user_id"], :name => "index_submissions_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.boolean  "admin",             :default => false
    t.boolean  "judge",             :default => false
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.string   "provider"
    t.string   "uid"
    t.string   "email"
    t.boolean  "agreed"
    t.boolean  "confirmed"
    t.string   "confirmation_code"
    t.string   "ip"
  end

end
