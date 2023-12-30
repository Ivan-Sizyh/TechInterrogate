class VideoLink < ApplicationRecord
  belongs_to :video
  belongs_to :question
end
