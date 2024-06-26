class Vacancy < ApplicationRecord
  has_many :questions

  validates :title, presence: true
  validates :description, presence: true

  def questions_count
    Rails.cache.fetch("vacancy_#{id}_questions_count", expires_in: 1.hour) do
      questions.size
    end
  end
end
