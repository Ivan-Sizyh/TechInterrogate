class Video < ApplicationRecord
  has_many :video_links
  has_many :questions, through: :video_links

  before_save :check_and_set_timecode

  private

  def check_and_set_timecode
    self.timecode ||= 0 if timecode.nil?
  end
end
