# frozen_string_literal: true

class Tag < ApplicationRecord # rubocop:disable Style/Documentation
  has_many :questions
end
