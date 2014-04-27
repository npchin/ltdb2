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

ActiveRecord::Schema.define(version: 20140427042039) do

  create_table "cars", force: true do |t|
    t.integer "user_id"
    t.integer "year"
    t.string  "make"
    t.string  "model"
    t.integer "modification_id"
  end

  create_table "experiences", force: true do |t|
    t.string "hpde"
    t.string "open_track_day"
    t.string "time_trial"
    t.string "club"
    t.string "pro"
  end

  create_table "laps", force: true do |t|
    t.integer "user_id"
    t.integer "modification_id"
    t.date    "lap_date"
    t.integer "track_id"
    t.time    "lap_time"
    t.string  "video_link"
    t.string  "data_file"
  end

  create_table "modifications", force: true do |t|
    t.string "suspension"
    t.string "chassis"
    t.string "engine"
    t.string "exhaust"
    t.string "drivetrain"
    t.string "brakes"
    t.string "aesthetics"
    t.string "aerodynamics"
    t.string "tiles"
    t.string "wheels"
    t.string "data"
    t.string "interior"
    t.string "safety"
  end

  create_table "tracks", force: true do |t|
    t.string "track_name"
  end

  create_table "users", force: true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "email"
    t.string  "screen_name"
    t.integer "zip"
  end

end
