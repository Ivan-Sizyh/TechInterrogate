class Question < ApplicationRecord
  belongs_to :vacancy
  belongs_to :tag, optional: true

  has_many :answers
  has_many :video_links

  before_save :set_default_tag_if_none

  private

  def set_default_tag_if_none
    return if tag.present?

    default_tag = Tag.find_or_create_by(title: 'Нет')

    self.tag = default_tag if default_tag.present?
  end
end
