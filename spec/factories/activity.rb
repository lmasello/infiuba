FactoryGirl.define do
  factory :activity do
    name { Faker::Lorem.word }
    image_url { Faker::File.file_name('assets/images/activities') }
    details { Faker::Lorem.sentence }
  end
end
