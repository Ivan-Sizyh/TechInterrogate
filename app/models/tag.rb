class Tag < ApplicationRecord
  # rubocop:disable Rails/HasManyOrHasOneDependent
  has_many :questions
  # rubocop:enable Rails/HasManyOrHasOneDependent
end
