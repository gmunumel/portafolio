FactoryGirl.define do
  factory :post do
    title { Faker::Lorem.word }
    text { Faker::Lorem.paragraph }
    tags { Faker::Number.digit }
    comments { Faker::Number.digit }
    images {|images| [images.association(:image)]}
  end

end
