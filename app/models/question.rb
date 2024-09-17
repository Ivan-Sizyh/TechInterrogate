class Question < ApplicationRecord
  belongs_to :vacancy
  belongs_to :tag

  has_many :answers, dependent: :destroy
  has_many :video_links, dependent: :destroy
  has_many :videos, through: :video_links

  validates :text, presence: true

  before_validation :default_tag, on: :create

  after_commit :update_questions_count_cache, on: %i[create destroy]

  private

  def default_tag
    return if tag.present?

    default_tag = Tag.find_or_create_by(title: 'Нет')

    self.tag = default_tag
  end

  def update_questions_count_cache
    return unless destroyed? || persisted?

    QuestionsHelper.update_questions_count_cache(vacancy)
  end
end
