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

ActiveRecord::Schema.define(version: 2022_02_23_045756) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expenses", force: :cascade do |t|
    t.datetime "date"
    t.string "category"
    t.integer "quantity"
    t.integer "total_amount"
    t.text "description"
    t.bigint "type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "unit_price"
    t.index ["type_id"], name: "index_expenses_on_type_id"
  end

  create_table "flocks", force: :cascade do |t|
    t.integer "batch_no"
    t.datetime "date_in"
    t.datetime "expected_retirement_date"
    t.string "flock_type"
    t.string "source"
    t.string "flock_stored"
    t.integer "initial_stock"
    t.integer "current_stock"
    t.integer "age"
    t.text "notes"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "status_id"
    t.bigint "type_id"
    t.index ["status_id"], name: "index_flocks_on_status_id"
    t.index ["type_id"], name: "index_flocks_on_type_id"
  end

  create_table "incomes", force: :cascade do |t|
    t.datetime "date"
    t.string "category"
    t.integer "quantity"
    t.integer "total_amount"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "unit_price"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "expenses", "types"
  add_foreign_key "flocks", "statuses"
  add_foreign_key "flocks", "types"
end
