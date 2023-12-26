enable_extension 'plpgsql'

ActiveRecord::Schema[7.0].define(version: 20_231_222_121_248) do
  create_table 'answers', force: :cascade do |t|
    t.string 'text', null: false
    t.date 'response_date', null: false
    t.string 'responder', null: false
    t.bigint 'question_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['question_id'], name: 'index_answers_on_question_id'
  end

  create_table 'questions', force: :cascade do |t|
    t.string 'text'
    t.bigint 'vacancy_id', null: false
    t.bigint 'tag_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.text 'additional'
    t.string 'additioner'
    t.index ['tag_id'], name: 'index_questions_on_tag_id'
    t.index ['vacancy_id'], name: 'index_questions_on_vacancy_id'
  end

  create_table 'tags', force: :cascade do |t|
    t.string 'title'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'vacancies', force: :cascade do |t|
    t.string 'title'
    t.text 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'video_links', force: :cascade do |t|
    t.string 'text', null: false
    t.string 'video_id', null: false
    t.string 'timecode', null: false
    t.bigint 'question_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['question_id'], name: 'index_video_links_on_question_id'
  end

  add_foreign_key 'answers', 'questions'
  add_foreign_key 'questions', 'tags'
  add_foreign_key 'questions', 'vacancies'
  add_foreign_key 'video_links', 'questions'
end
