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

ActiveRecord::Schema.define(version: 2022_01_11_002700) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carbs", force: :cascade do |t|
    t.integer "breakfast"
    t.integer "lunch"
    t.integer "dinner"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "days", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meals", force: :cascade do |t|
    t.bigint "users_id", null: false
    t.integer "week"
    t.bigint "days_id", null: false
    t.bigint "carbs_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["carbs_id"], name: "index_meals_on_carbs_id"
    t.index ["days_id"], name: "index_meals_on_days_id"
    t.index ["users_id"], name: "index_meals_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "dob"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "meals", "carbs", column: "carbs_id"
  add_foreign_key "meals", "days", column: "days_id"
  add_foreign_key "meals", "users", column: "users_id"
end
