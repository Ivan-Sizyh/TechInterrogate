class Vacancy < ApplicationRecord
  has_many :questions

  def questions_count
    Rails.cache.fetch("vacancy_#{self.id}_questions_count", expires_in: 1.hour) do
      self.questions.size
    end
  end
end
