class Interview < ApplicationRecord
  belongs_to :vacancy
  belongs_to :grade
  has_one :interview_video
  has_one :video, through: :interview_video
end
