FactoryGirl.define do
  factory :album do
    name { Faker::Lorem.word }
    url { Faker::Internet.url }
  end
end
