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

ActiveRecord::Schema.define(version: 20201222172946) do

  create_table "animates", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "size"
    t.text     "color"
    t.text     "emotion"
    t.text     "setting"
    t.text     "movement"
    t.text     "distinct_parts"
    t.integer  "heartfelt_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "difficults", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "tactic_1"
    t.text     "tactic_2"
    t.text     "tactic_3"
    t.integer  "heartfelt_id"
    t.integer  "animate_id"
    t.integer  "difficult_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "heartfelts", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "enjoyments"
    t.text     "benefits"
    t.text     "rewards"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "requireds", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.date     "deadline"
    t.integer  "heartfelt_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "animate_id"
  end

end
