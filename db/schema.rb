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

ActiveRecord::Schema.define(version: 20131104035013) do

  create_table "checks", force: true do |t|
    t.time     "check_in"
    t.time     "check_out"
    t.string   "week_day"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "schedule_id"
  end

  add_index "checks", ["schedule_id"], name: "index_checks_on_schedule_id"

  create_table "memberships", force: true do |t|
    t.integer  "user_id"
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rol_id"
  end

  add_index "memberships", ["organization_id"], name: "index_memberships_on_organization_id"
  add_index "memberships", ["rol_id"], name: "index_memberships_on_rol_id"
  add_index "memberships", ["user_id"], name: "index_memberships_on_user_id"

  create_table "organizations", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rols", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_details", force: true do |t|
    t.time     "entry_time"
    t.time     "exit_time"
    t.string   "week_day"
    t.float    "latitude"
    t.float    "length"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "schedule_id"
  end

  add_index "schedule_details", ["schedule_id"], name: "index_schedule_details_on_schedule_id"

  create_table "schedules", force: true do |t|
    t.string   "job"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "membership_id"
  end

  add_index "schedules", ["membership_id"], name: "index_schedules_on_membership_id"

  create_table "users", force: true do |t|
    t.string   "user_name"
    t.boolean  "status"
    t.date     "validity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
  end

end
