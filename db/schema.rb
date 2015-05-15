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

ActiveRecord::Schema.define(version: 20150514225450) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "player_name"
    t.string   "email"
    t.integer  "level"
    t.integer  "exp"
    t.integer  "influence"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.string   "name"
    t.text     "rating_def"
    t.integer  "value"
    t.integer  "player_id"
    t.integer  "thought_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ratings", ["player_id"], name: "index_ratings_on_player_id", using: :btree
  add_index "ratings", ["thought_id"], name: "index_ratings_on_thought_id", using: :btree

  create_table "thoughts", force: :cascade do |t|
    t.text     "title"
    t.text     "thought_href"
    t.text     "citation"
    t.integer  "player_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "thoughts", ["player_id"], name: "index_thoughts_on_player_id", using: :btree

  add_foreign_key "ratings", "players"
  add_foreign_key "ratings", "thoughts"
  add_foreign_key "thoughts", "players"
end
