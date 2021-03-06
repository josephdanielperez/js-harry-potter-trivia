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

ActiveRecord::Schema.define(version: 2020_02_29_220856) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "questions", force: :cascade do |t|
    t.text "content"
    t.text "answer_a"
    t.text "answer_b"
    t.text "answer_c"
    t.text "answer_d"
    t.string "correct_answer"
    t.bigint "round_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "question_number"
    t.index ["round_id"], name: "index_questions_on_round_id"
  end

  create_table "rounds", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_answers", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "round_id"
    t.bigint "question_id"
    t.string "correct_answer"
    t.string "user_input"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_user_answers_on_question_id"
    t.index ["round_id"], name: "index_user_answers_on_round_id"
    t.index ["user_id"], name: "index_user_answers_on_user_id"
  end

  create_table "user_rounds", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "round_id"
    t.integer "attempts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["round_id"], name: "index_user_rounds_on_round_id"
    t.index ["user_id"], name: "index_user_rounds_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "questions", "rounds"
  add_foreign_key "user_answers", "questions"
  add_foreign_key "user_answers", "rounds"
  add_foreign_key "user_answers", "users"
  add_foreign_key "user_rounds", "rounds"
  add_foreign_key "user_rounds", "users"
end
