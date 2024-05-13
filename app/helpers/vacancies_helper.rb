module VacanciesHelper
  def questions_count(vacancy)
    Rails.cache.fetch("vacancy_#{vacancy.id}_questions_count", expires_in: 1.hour) do
      @questions.size
    end
  end
end
