class Vacancy < ApplicationRecord
  has_many :questions

  validates :title, presence: true
  validates :description, presence: true
end
