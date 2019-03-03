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

ActiveRecord::Schema.define(version: 2019_03_03_194508) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "daily_task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["daily_task_id"], name: "index_assignments_on_daily_task_id"
    t.index ["user_id"], name: "index_assignments_on_user_id"
  end

  create_table "challenge_points", force: :cascade do |t|
    t.bigint "challenge_id"
    t.bigint "heroic_habit_id"
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_challenge_points_on_challenge_id"
    t.index ["heroic_habit_id"], name: "index_challenge_points_on_heroic_habit_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "level_id"
    t.integer "intro_day"
    t.integer "category"
    t.string "url"
    t.string "embed_url"
    t.index ["level_id"], name: "index_challenges_on_level_id"
  end

  create_table "complete_challenges", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "challenge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_complete_challenges_on_challenge_id"
    t.index ["user_id"], name: "index_complete_challenges_on_user_id"
  end

  create_table "daily_tasks", force: :cascade do |t|
    t.integer "element"
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "level_id"
    t.bigint "heroic_habit_id"
    t.string "url"
    t.index ["heroic_habit_id"], name: "index_daily_tasks_on_heroic_habit_id"
    t.index ["level_id"], name: "index_daily_tasks_on_level_id"
  end

  create_table "heroic_habits", force: :cascade do |t|
    t.integer "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "intro_day"
    t.string "url"
  end

  create_table "level0_points", force: :cascade do |t|
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "heroic_habit_id"
    t.index ["heroic_habit_id"], name: "index_level0_points_on_heroic_habit_id"
  end

  create_table "levels", force: :cascade do |t|
    t.integer "required_points"
    t.integer "habit_points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "num"
    t.index ["num"], name: "index_levels_on_num", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "screen_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "level_id"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["level_id"], name: "index_users_on_level_id"
    t.index ["screen_name"], name: "index_users_on_screen_name", unique: true
  end

  add_foreign_key "challenges", "levels"
  add_foreign_key "daily_tasks", "heroic_habits"
  add_foreign_key "daily_tasks", "levels"
  add_foreign_key "level0_points", "heroic_habits"
  add_foreign_key "users", "levels"
end
