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

ActiveRecord::Schema.define(version: 20140408150858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groupings", force: true do |t|
    t.integer "outfit_id"
    t.integer "piece_id"
  end

  create_table "locations", force: true do |t|
    t.string  "name"
    t.string  "type"
    t.integer "user_id"
  end

  create_table "outfits", force: true do |t|
    t.string  "name"
    t.text    "description"
    t.integer "user_id"
  end

  create_table "pieces", force: true do |t|
    t.string   "type"
    t.string   "subtype"
    t.string   "color"
    t.string   "brand"
    t.string   "size"
    t.date     "date_purchased"
    t.decimal  "price"
    t.string   "source"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.text     "note"
    t.integer  "location_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "link"
  end

  create_table "users", force: true do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
  end

  create_table "wears", force: true do |t|
    t.integer  "piece_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
