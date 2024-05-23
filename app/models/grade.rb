class Grade < ApplicationRecord
  # rubocop:disable Rails/HasManyOrHasOneDependent
  has_many :interviews
  # rubocop:enable Rails/HasManyOrHasOneDependent
end
