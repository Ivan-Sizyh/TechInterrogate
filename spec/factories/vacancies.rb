FactoryBot.define do
  sequence :title do |n|
    "MyTitle#{n}"
  end

  sequence :description do |n|
    "MyDescription#{n}"
  end

  factory :vacancy do
    title
    description

    trait :invalid do
      title { nil }
      description { nil }
    end

    trait :with_questions do
      questions { FactoryBot.create_list(:question, 3) }
    end
  end
end
