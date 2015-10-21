include RandomData

FactoryGirl.define do
  factory :vote do
    value
    user
    post
  end
end
