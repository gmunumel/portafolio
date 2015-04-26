FactoryGirl.define do
  factory :project do
    title { Faker::Lorem.word }
    text { Faker::Lorem.paragraph }
    url { Faker::Internet.url }
    key_feature { Faker::Lorem.word }
    image_1 { Faker::Lorem.word }
    image_2 { Faker::Lorem.word }
    image_3 { Faker::Lorem.word }
  end
end