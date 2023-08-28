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

ActiveRecord::Schema[7.0].define(version: 2023_08_28_152421) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boardgames", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "play_time"
    t.integer "age"
    t.string "image"
    t.float "rating"
    t.integer "min_player"
    t.integer "max_player"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_to_users", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "boardgame_id", null: false
    t.boolean "owned"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boardgame_id"], name: "index_game_to_users_on_boardgame_id"
    t.index ["user_id"], name: "index_game_to_users_on_user_id"
  end

  create_table "parties", force: :cascade do |t|
    t.bigint "boardgame_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boardgame_id"], name: "index_parties_on_boardgame_id"
  end

  create_table "players", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "party_id", null: false
    t.float "score"
    t.boolean "game_master"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["party_id"], name: "index_players_on_party_id"
    t.index ["user_id"], name: "index_players_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
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

  add_foreign_key "game_to_users", "boardgames"
  add_foreign_key "game_to_users", "users"
  add_foreign_key "parties", "boardgames"
  add_foreign_key "players", "parties"
  add_foreign_key "players", "users"
end
