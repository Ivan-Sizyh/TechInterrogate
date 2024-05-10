require 'rails_helper'

RSpec.describe Question, type: :model do
  describe 'associations' do
    it { should belong_to(:vacancy) }
    it { should belong_to(:tag).optional(true) }

    it { should have_many(:answers) }
    it { should have_many(:video_links) }
    it { should have_many(:videos).through(:video_links) }
  end

  describe 'validations' do
    it { should validate_presence_of(:text) }
  end
end
