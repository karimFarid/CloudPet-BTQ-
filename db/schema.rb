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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150501192738) do

  create_table "buddies", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "register_id"
    t.boolean  "can_feed"
    t.boolean  "can_schedule"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "username"
  end

  add_index "buddies", ["register_id"], name: "index_buddies_on_register_id"
  add_index "buddies", ["user_id"], name: "index_buddies_on_user_id"

  create_table "devices", force: :cascade do |t|
    t.integer  "User_id"
    t.integer  "Register_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "pet_name"
    t.integer  "amount"
    t.date     "starts_at"
    t.date     "ends_at"
    t.time     "time"
    t.integer  "User_id"
    t.integer  "Register_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "events", ["Register_id"], name: "index_events_on_Register_id"
  add_index "events", ["User_id"], name: "index_events_on_User_id"

  create_table "feeds", force: :cascade do |t|
    t.string   "body"
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "feeds", ["User_id"], name: "index_feeds_on_User_id"

  create_table "foods", force: :cascade do |t|
    t.integer  "weight"
    t.integer  "leftovers"
    t.integer  "ate"
    t.date     "date"
    t.time     "time"
    t.integer  "User_id"
    t.integer  "Register_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "foods", ["Register_id"], name: "index_foods_on_Register_id"
  add_index "foods", ["User_id"], name: "index_foods_on_User_id"

  create_table "registers", force: :cascade do |t|
    t.string   "name"
    t.text     "breed"
    t.text     "species"
    t.text     "gender"
    t.integer  "User_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.date     "date_of_birth"
  end

  add_index "registers", ["User_id"], name: "index_registers_on_User_id"

  create_table "reminders", force: :cascade do |t|
    t.string   "body"
    t.date     "due_date"
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "Repeat"
  end

  add_index "reminders", ["User_id"], name: "index_reminders_on_User_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "image"
    t.string   "gender"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
