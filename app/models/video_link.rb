# frozen_string_literal: true

class VideoLink < ApplicationRecord # rubocop:disable Style/Documentation
  belongs_to :question
end
