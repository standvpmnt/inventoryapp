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

ActiveRecord::Schema.define(version: 2019_10_21_091850) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cobas_reagents", force: :cascade do |t|
    t.string "test_code"
    t.integer "reagent_bottle"
    t.string "test_short_name"
    t.string "reagent_name"
    t.integer "test_nos"
    t.integer "expiry_month"
    t.integer "expiry_year"
    t.string "lot_no"
    t.string "unique_identifier"
    t.datetime "ho_in_time"
    t.string "ho_in_employee"
    t.datetime "ho_out_time"
    t.string "ho_out_employee"
    t.datetime "lab_in_time"
    t.string "lab_location"
    t.string "lab_in_employee"
    t.datetime "lab_use_time"
    t.string "lab_use_employee"
    t.datetime "lab_discard_time"
    t.string "lab_discard_employee"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "location"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
