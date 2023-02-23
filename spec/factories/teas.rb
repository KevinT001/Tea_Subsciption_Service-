FactoryBot.define do
  factory :tea do 
    title { Faker::Movie.title }
    description { Faker::Food.description }
    temperature { Faker::Number.between(from: 55, to: 100) }
    brew_time { Faker::Number.between(from: 7, to: 15 ) }
  end
end 