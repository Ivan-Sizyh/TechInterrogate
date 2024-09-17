class Interview < ApplicationRecord
  belongs_to :vacancy
  belongs_to :grade

  has_one :interview_video, dependent: :destroy
  has_one :video, through: :interview_video

  validates :video, presence: true

  after_create :build_interview_video

  private

  def build_interview_video
    self.interview_video = InterviewVideo.create!(interview: self, video: video) if interview_video.nil?
  end
end
