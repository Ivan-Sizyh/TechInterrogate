class Question < ApplicationRecord
  belongs_to :vacancy
  has_one :question_tag
  has_one :tag, through: :question_tag, class_name: 'Tag'
end
