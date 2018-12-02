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

ActiveRecord::Schema.define(version: 2018_12_02_142306) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "episodes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["season_id"], name: "index_episodes_on_season_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.string "purchaseable_type"
    t.bigint "purchaseable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "purchase_type"
    t.index ["purchaseable_type", "purchaseable_id"], name: "index_purchases_on_purchaseable_type_and_purchaseable_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_purchases", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "purchase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purchase_id"], name: "index_user_purchases_on_purchase_id"
    t.index ["user_id"], name: "index_user_purchases_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "episodes", "seasons"
  add_foreign_key "user_purchases", "purchases"
  add_foreign_key "user_purchases", "users"
end
