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

ActiveRecord::Schema.define(version: 2019_09_18_153526) do

  create_table "routes", force: :cascade do |t|
    t.string "tam_id"
    t.string "short_name"
    t.string "long_name"
    t.integer "route_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stops", force: :cascade do |t|
    t.string "tam_id"
    t.string "code"
    t.string "name"
    t.float "lat"
    t.float "long"
    t.integer "location_type"
    t.string "parent_stop_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transfers", force: :cascade do |t|
    t.integer "from_stop_id"
    t.integer "to_stop_id"
    t.string "transfer_type"
    t.integer "min_transfer_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trips", force: :cascade do |t|
    t.string "tam_id"
    t.string "route_id"
    t.string "service_id"
    t.string "trip_headsign"
    t.integer "direction_id"
    t.string "block_id"
    t.integer "wheelchair_accessible"
    t.integer "bikes_allowed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
