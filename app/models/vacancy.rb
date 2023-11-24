class Vacancy < ApplicationRecord
  has_many :questions

  attr_accessor :cached_questions_count

  def calculate_questions_count
    self.cached_questions_count = questions.count
  end
end
