# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_02_172735) do

  create_table "gears", force: :cascade do |t|
    t.string "name"
    t.integer "make_year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trip_gears", force: :cascade do |t|
    t.integer "trip_id", null: false
    t.integer "gear_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gear_id"], name: "index_trip_gears_on_gear_id"
    t.index ["trip_id"], name: "index_trip_gears_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_gears", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "gear_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gear_id"], name: "index_user_gears_on_gear_id"
    t.index ["user_id"], name: "index_user_gears_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "trip_gears", "gears"
  add_foreign_key "trip_gears", "trips"
  add_foreign_key "user_gears", "gears"
  add_foreign_key "user_gears", "users"
end
