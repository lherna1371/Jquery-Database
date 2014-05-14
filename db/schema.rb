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

ActiveRecord::Schema.define(version: 20140509212821) do

  create_table "activities", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.text     "web"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.text     "image"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "contact_first_name"
    t.string   "contact_last_name"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.text     "description"
    t.datetime "start_date_time"
    t.datetime "end_date_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "category_name"
    t.text     "category_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partners", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.text     "web"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.text     "image"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "password"
    t.string   "contact_first_name"
    t.string   "contact_last_name"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "password_digest"
    t.string   "uid_fb"
    t.string   "email"
    t.string   "email_fb"
    t.string   "name_fb"
    t.string   "first_name_fb"
    t.string   "last_name_fb"
    t.string   "gender_fb"
    t.string   "image_url_fb"
    t.string   "oauth_token_fb"
    t.string   "zipcode"
    t.string   "phone"
    t.boolean  "is_active",       default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
