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

ActiveRecord::Schema[7.0].define(version: 2024_05_17_163748) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string "text", null: false
    t.date "response_date", null: false
    t.string "responder", null: false
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "additional", null: false
    t.string "additioner", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "grades", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interview_videos", force: :cascade do |t|
    t.bigint "interview_id", null: false
    t.bigint "video_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["interview_id"], name: "index_interview_videos_on_interview_id"
    t.index ["video_id"], name: "index_interview_videos_on_video_id"
  end

  create_table "interviews", force: :cascade do |t|
    t.bigint "vacancy_id", null: false
    t.bigint "grade_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_interviews_on_grade_id"
    t.index ["vacancy_id"], name: "index_interviews_on_vacancy_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "text", null: false
    t.bigint "vacancy_id", null: false
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_questions_on_tag_id"
    t.index ["vacancy_id"], name: "index_questions_on_vacancy_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "name", null: false
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "remember_token_digest"
    t.integer "role", default: 0, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["role"], name: "index_users_on_role"
  end

  create_table "vacancies", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "video_links", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.bigint "video_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_video_links_on_question_id"
    t.index ["video_id"], name: "index_video_links_on_video_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string "title", null: false
    t.string "video_id", null: false
    t.integer "timecode", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "interview_videos", "interviews"
  add_foreign_key "interview_videos", "videos"
  add_foreign_key "interviews", "grades"
  add_foreign_key "interviews", "vacancies"
  add_foreign_key "questions", "tags"
  add_foreign_key "questions", "vacancies"
  add_foreign_key "video_links", "questions"
  add_foreign_key "video_links", "videos"
end
