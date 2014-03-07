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

ActiveRecord::Schema.define(version: 20140307013235) do

  create_table "codes", force: true do |t|
    t.string   "serial"
    t.boolean  "finished"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.boolean  "exist"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "number1"
    t.integer  "number2"
    t.string   "email"
  end

  create_table "company_codes", force: true do |t|
    t.integer  "company_id"
    t.integer  "code_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "company_codes", ["code_id"], name: "index_company_codes_on_code_id"
  add_index "company_codes", ["company_id"], name: "index_company_codes_on_company_id"

  create_table "phoneinfos", force: true do |t|
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "phoneinfos", ["user_id"], name: "index_phoneinfos_on_user_id"

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_codes", force: true do |t|
    t.integer  "user_id"
    t.integer  "code_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_codes", ["code_id"], name: "index_user_codes_on_code_id"
  add_index "user_codes", ["user_id"], name: "index_user_codes_on_user_id"

  create_table "user_companies", force: true do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_companies", ["company_id"], name: "index_user_companies_on_company_id"
  add_index "user_companies", ["user_id"], name: "index_user_companies_on_user_id"

  create_table "user_company_roles", force: true do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_company_roles", ["company_id"], name: "index_user_company_roles_on_company_id"
  add_index "user_company_roles", ["role_id"], name: "index_user_company_roles_on_role_id"
  add_index "user_company_roles", ["user_id"], name: "index_user_company_roles_on_user_id"

  create_table "user_roles", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "role_id"
  end

  add_index "user_roles", ["role_id"], name: "index_user_roles_on_role_id"
  add_index "user_roles", ["user_id"], name: "index_user_roles_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "available"
    t.boolean  "stillWorking"
    t.integer  "number1"
    t.integer  "number2"
    t.integer  "latitude"
    t.integer  "longitude"
  end

end
