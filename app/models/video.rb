class Video < ApplicationRecord
  has_many :video_links, dependent: :destroy
  has_many :questions, through: :video_links
  has_one :interview_video, dependent: :destroy
  has_one :interview, through: :interview_video

  before_save :check_and_set_timecode

  private

  def check_and_set_timecode
    self.timecode ||= 0
  end
end
