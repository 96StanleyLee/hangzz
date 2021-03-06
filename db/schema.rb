# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_27_132543) do

  create_table "commute_differentials", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "location_id", null: false
    t.float "differential"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_commute_differentials_on_location_id"
    t.index ["user_id"], name: "index_commute_differentials_on_user_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.index ["slug"], name: "index_groups_on_slug", unique: true
  end

  create_table "location_types", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "address"
    t.string "name"
    t.integer "location_type_id", null: false
    t.integer "price_in_dollar_signs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.string "file"
    t.index ["location_type_id"], name: "index_locations_on_location_type_id"
    t.index ["slug"], name: "index_locations_on_slug", unique: true
  end

  create_table "meetups", force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "location_id", null: false
    t.integer "status", default: 0
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "average_additional_commute_time"
    t.string "slug"
    t.index ["group_id"], name: "index_meetups_on_group_id"
    t.index ["location_id"], name: "index_meetups_on_location_id"
    t.index ["slug"], name: "index_meetups_on_slug", unique: true
  end

  create_table "memberships", force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_memberships_on_group_id"
    t.index ["user_id"], name: "index_memberships_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "home_address"
    t.string "work_address"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "slug"
    t.index ["slug"], name: "index_users_on_slug", unique: true
  end

  add_foreign_key "commute_differentials", "locations"
  add_foreign_key "commute_differentials", "users"
  add_foreign_key "locations", "location_types"
  add_foreign_key "meetups", "groups"
  add_foreign_key "meetups", "locations"
  add_foreign_key "memberships", "groups"
  add_foreign_key "memberships", "users"
end
