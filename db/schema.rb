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

ActiveRecord::Schema.define(version: 2021_09_22_004637) do

  create_table "frames", force: :cascade do |t|
    t.integer "frame_score", default: 0
    t.integer "waiting_how_much_throws", default: 2
    t.integer "frame_number", default: 1
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "game_id", null: false
    t.integer "frame_type", default: 0
    t.index ["game_id"], name: "index_frames_on_game_id"
  end

  create_table "frames_throws", id: false, force: :cascade do |t|
    t.integer "throw_id", null: false
    t.integer "frame_id", null: false
    t.index ["throw_id", "frame_id"], name: "index_frames_throws_on_throw_id_and_frame_id"
  end

  create_table "games", force: :cascade do |t|
    t.integer "total_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "status"
  end

  create_table "throws", force: :cascade do |t|
    t.integer "knocked_pins", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "frames", "games"
end
