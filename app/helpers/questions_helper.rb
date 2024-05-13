module QuestionsHelper
  def self.update_questions_count_cache(vacancy)
    Rails.cache.write("vacancy_#{vacancy.id}_questions_count", vacancy.questions.count, expires_in: 1.hour)
  end

  def self.default_tag(question)
    return if question.tag.present?

    default_tag = Tag.find_or_create_by(title: 'Нет')

    question.tag = default_tag
  end
end
