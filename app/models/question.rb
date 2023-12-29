class Question < ApplicationRecord
  belongs_to :vacancy
  belongs_to :tag, optional: true

  has_many :answers
  has_many :video_links
  has_many :videos, through: :video_links

  before_save :set_default_tag_if_none

  after_commit :update_questions_count_cache, on: [:create, :destroy]

  private

  def set_default_tag_if_none
    return if tag.present?

    default_tag = Tag.find_or_create_by(title: 'Нет')

    self.tag = default_tag if default_tag.present?
  end

  def update_questions_count_cache
    Rails.cache.write("vacancy_#{vacancy.id}_questions_count", vacancy.questions.count, expires_in: 1.hour)
  end
end
