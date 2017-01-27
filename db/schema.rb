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

ActiveRecord::Schema.define(version: 20170124224227) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string   "country_name",  null: false
    t.string   "country_code2"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "species", force: :cascade do |t|
    t.string   "species_name"
    t.string   "species_latin_name", null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "species", ["species_latin_name"], name: "index_species_on_species_latin_name", unique: true, using: :btree

  create_table "species_inventories", force: :cascade do |t|
    t.integer  "species_id",         null: false
    t.integer  "country_id",         null: false
    t.integer  "inventory_count",    null: false
    t.date     "next_shipment_date"
    t.float    "price",              null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
