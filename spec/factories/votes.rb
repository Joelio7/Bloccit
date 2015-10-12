include RandomData

FactoryGirl.define do
  factory :vote do
    value
    user_id
    post_id
  end
end
