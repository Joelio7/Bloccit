include RandomData

FactoryGirl.define do
  factory :label  do
    name
    labelable_id
    labelable_type
  end
end
