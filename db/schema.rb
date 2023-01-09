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

ActiveRecord::Schema[7.0].define(version: 2023_01_02_085707) do
  create_table "bookings", force: :cascade do |t|
    t.string "user_name"
    t.integer "user_cnic"
    t.string "user_email"
    t.integer "confirmed_route_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "seat_no"
    t.index ["confirmed_route_id"], name: "index_bookings_on_confirmed_route_id"
  end

  create_table "buses", force: :cascade do |t|
    t.string "bus_no"
    t.integer "total_seats"
    t.integer "status"
    t.integer "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "available_seat"
    t.index ["company_id"], name: "index_buses_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "confirmed_routes", force: :cascade do |t|
    t.date "date"
    t.time "dep_time"
    t.time "arr_time"
    t.integer "bus_id", null: false
    t.integer "route_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price"
    t.index ["bus_id"], name: "index_confirmed_routes_on_bus_id"
    t.index ["route_id"], name: "index_confirmed_routes_on_route_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string "name"
    t.string "departure"
    t.string "arrival"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_homes", force: :cascade do |t|
    t.date "date"
    t.string "departure"
    t.string "arrival"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "userhomepages", force: :cascade do |t|
    t.date "date"
    t.string "departure"
    t.string "arrival"
    t.integer "confirmed_route_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "service"
    t.integer "company_id", null: false
    t.index ["company_id"], name: "index_userhomepages_on_company_id"
    t.index ["confirmed_route_id"], name: "index_userhomepages_on_confirmed_route_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "confirmed_routes"
  add_foreign_key "buses", "companies"
  add_foreign_key "confirmed_routes", "buses"
  add_foreign_key "confirmed_routes", "routes"
  add_foreign_key "userhomepages", "companies"
  add_foreign_key "userhomepages", "confirmed_routes"
end
