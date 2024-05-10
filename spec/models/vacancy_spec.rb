require 'rails_helper'

RSpec.describe Vacancy, type: :model do
  describe 'associations' do
    it { should have_many(:questions) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
  end
end
