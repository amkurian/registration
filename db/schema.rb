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

ActiveRecord::Schema.define(version: 20150709114834) do

  create_table "designations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",           limit: 255
    t.string   "middle_name",          limit: 255
    t.string   "last_name",            limit: 255
    t.string   "email",                limit: 255
    t.string   "logid",                limit: 255
    t.string   "password",             limit: 255
    t.string   "employee_id",          limit: 255
    t.string   "date_of_birth",        limit: 255
    t.string   "gender",               limit: 255
    t.string   "time_zone",            limit: 255
    t.string   "date_of_joining",      limit: 255
    t.text     "education",            limit: 65535
    t.text     "comments",             limit: 65535
    t.string   "work_phone",           limit: 255
    t.boolean  "islock"
    t.boolean  "isactive"
    t.string   "date_of_deactivation", limit: 255
    t.string   "Reason",               limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "designation_id",       limit: 4
  end

  add_index "users", ["designation_id"], name: "index_users_on_designation_id", using: :btree

  add_foreign_key "users", "designations"
end
