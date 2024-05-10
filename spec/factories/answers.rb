FactoryBot.define do
  factory :answer do
    text { 'New answer' }
    respond_date { Date.current }
    responder { 'John Doe' }
    question
  end
end
