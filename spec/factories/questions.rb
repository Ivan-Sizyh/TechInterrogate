FactoryBot.define do
  sequence :text do |n|
    "Simple text#{n}"
  end

  factory :question do
    text
    vacancy

  trait :with_tag do
    tag { FactoryBot.create(:tag) }
  end

  trait :invalid do
    text { nil }
  end
  end
end
