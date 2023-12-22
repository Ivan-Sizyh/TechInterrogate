# frozen_string_literal: true

class Answer < ApplicationRecord # rubocop:disable Style/Documentation
  belongs_to :question
end
