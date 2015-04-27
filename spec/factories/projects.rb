FactoryGirl.define do
  factory :project do
    title { Faker::Lorem.word }
    text { Faker::Lorem.paragraph }
    url { Faker::Internet.url }
    key_feature { Faker::Lorem.word }
    association :category, factory: :category
    images {|images| [images.association(:image)]}
  end
end