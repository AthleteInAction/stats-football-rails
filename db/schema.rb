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

ActiveRecord::Schema.define(version: 20150911215909) do

  create_table "games", force: true do |t|
    t.datetime "start_time"
    t.integer  "away_id"
    t.integer  "home_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.integer  "team_id"
    t.integer  "jersey"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plays", force: true do |t|
    t.integer  "game_id"
    t.integer  "sequence_id"
    t.string   "key"
    t.integer  "end_x"
    t.integer  "end_y"
    t.integer  "player_a"
    t.integer  "player_b"
    t.string   "penalty_key"
    t.integer  "penalty_distance"
    t.boolean  "penalty_offset"
    t.integer  "pos_id"
    t.string   "tackles"
    t.string   "sacks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sequences", force: true do |t|
    t.integer  "game_id"
    t.integer  "pos_id"
    t.integer  "qtr"
    t.string   "key"
    t.integer  "down"
    t.integer  "fd"
    t.integer  "start_x"
    t.integer  "start_y"
    t.boolean  "replay"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "short"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "roster"
  end

end
