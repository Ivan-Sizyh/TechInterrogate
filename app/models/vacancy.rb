class Vacancy < ApplicationRecord
  has_many :questions

  def questions_count
    Rails.cache.fetch("vacancy_#{id}_questions_count", expires_in: 1.day) do
      questions.size
    end
  end
end
