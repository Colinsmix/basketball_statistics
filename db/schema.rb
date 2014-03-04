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

ActiveRecord::Schema.define(version: 20140303220254) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: true do |t|
    t.integer  "hteam_id",   null: false
    t.integer  "ateam_id",   null: false
    t.integer  "hteamscore", null: false
    t.integer  "ateamscore", null: false
    t.integer  "winner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "game_date",  null: false
  end

  create_table "players", force: true do |t|
    t.integer  "team_id",    null: false
    t.string   "position",   null: false
    t.integer  "height",     null: false
    t.integer  "weight",     null: false
    t.string   "firstname",  null: false
    t.string   "lastname",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statlines", force: true do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rebounds",   default: 0
    t.integer  "assists",    default: 0
    t.integer  "steals",     default: 0
    t.integer  "turnovers",  default: 0
    t.integer  "fouls",      default: 0
  end

  create_table "teams", force: true do |t|
    t.string   "name",       null: false
    t.string   "location",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
