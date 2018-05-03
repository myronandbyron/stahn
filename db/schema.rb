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

ActiveRecord::Schema.define(version: 20180501211634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buyers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "fabrics", force: :cascade do |t|
    t.string "name"
    t.text "fabric_type"
    t.float "price_per_yard"
    t.string "image"
    t.boolean "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "item_type"
    t.float "price_per_item"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "measurements", force: :cascade do |t|
    t.float "neck"
    t.float "full_chest"
    t.float "full_shoulder"
    t.float "right_sleeve"
    t.float "left_sleeve"
    t.float "right_full_sleeve"
    t.float "left_full_sleeve"
    t.float "bicep"
    t.float "wrist"
    t.float "waist_stomach"
    t.float "hips_seat"
    t.float "front_jacket"
    t.float "front_chest"
    t.float "back_width"
    t.float "half_shoulder_right"
    t.float "half_shoulder_left"
    t.float "full_back_length"
    t.float "half_back_length"
    t.float "trouser_waist"
    t.float "trouser_outseam"
    t.float "trouser_inseam"
    t.float "crotch"
    t.float "thigh"
    t.float "knee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "buyer_id"
  end

  create_table "orders", force: :cascade do |t|
    t.float "subtotal"
    t.float "tax"
    t.float "price"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "buyer_id"
    t.integer "fabric_id"
    t.integer "measurement_id"
    t.integer "item_id"
  end

end
