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

ActiveRecord::Schema.define(version: 20160621012650) do

  create_table "books", force: :cascade do |t|
    t.string   "isbn"
    t.string   "title"
    t.string   "shortsummary"
    t.text     "longsummary"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "rating"
    t.date     "read"
    t.string   "status"
    t.string   "thumburl"
    t.integer  "platform_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "certificates", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "licenceid"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "email"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "thumburl"
  end

  create_table "moocs", force: :cascade do |t|
    t.string   "title"
    t.string   "shortsummary"
    t.text     "longsummary"
    t.string   "status"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "rating"
    t.integer  "platform_id"
    t.string   "url"
    t.integer  "institution_id"
    t.string   "thumburl"
    t.boolean  "has_certification"
    t.integer  "certificate_id"
  end

  create_table "platforms", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
