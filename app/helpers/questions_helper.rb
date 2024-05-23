module QuestionsHelper
  def self.update_questions_count_cache(vacancy)
    Rails.cache.write("vacancy_#{vacancy.id}_questions_count", vacancy.questions.count, expires_in: 1.hour)
  end
end
