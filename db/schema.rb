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

ActiveRecord::Schema.define(version: 20150709132302) do

  create_table "business_details", force: :cascade do |t|
    t.text     "description"
    t.string   "website"
    t.string   "phone"
    t.string   "email"
    t.string   "facebook"
    t.string   "twitter"
    t.integer  "business_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "businesses", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "sub_category_id"
    t.integer  "category_id"
  end

  add_index "businesses", ["category_id"], name: "index_businesses_on_category_id"
  add_index "businesses", ["sub_category_id"], name: "index_businesses_on_sub_category_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "categories", ["category_type_id"], name: "index_categories_on_category_type_id"

  create_table "category_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cultures", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "sub_categories", ["category_id"], name: "index_sub_categories_on_category_id"

  create_table "sub_cultures", force: :cascade do |t|
    t.integer  "culture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  add_index "sub_cultures", ["culture_id"], name: "index_sub_cultures_on_culture_id"

end
