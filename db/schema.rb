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

ActiveRecord::Schema[7.0].define(version: 2022_04_10_135501) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "car_ranges", force: :cascade do |t|
    t.integer "distance", default: 0, null: false
    t.integer "unit", default: 10, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string "make", null: false
    t.string "model", null: false
    t.integer "price"
    t.string "photo"
    t.bigint "car_range_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_range_id"], name: "index_cars_on_car_range_id"
  end

  create_table "cars_colors", force: :cascade do |t|
    t.bigint "car_id"
    t.bigint "color_id"
    t.index ["car_id", "color_id"], name: "index_cars_colors_on_car_id_and_color_id"
    t.index ["car_id"], name: "index_cars_colors_on_car_id"
    t.index ["color_id"], name: "index_cars_colors_on_color_id"
  end

  create_table "colors", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cars", "car_ranges"
  add_foreign_key "cars_colors", "cars"
  add_foreign_key "cars_colors", "colors"
end
