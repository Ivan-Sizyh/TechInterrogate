# frozen_string_literal: true

class Question < ApplicationRecord # rubocop:disable Style/Documentation
  belongs_to :vacancy
  belongs_to :tag, class_name: 'Tag', foreign_key: 'tag_id'
end
