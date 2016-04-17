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

ActiveRecord::Schema.define(version: 20160417155743) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventarios", force: :cascade do |t|
    t.integer  "numserie"
    t.integer  "tamaño"
    t.text     "descripcion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "operation_id"
  end

  add_index "inventarios", ["operation_id"], name: "index_inventarios_on_operation_id", using: :btree

  create_table "operations", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "employee_id"
  end

  add_index "operations", ["employee_id"], name: "index_operations_on_employee_id", using: :btree

end
