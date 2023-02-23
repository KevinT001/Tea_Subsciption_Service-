FactoryBot.define do
  factory :subscription do 
    tea 
    customer
    title { Faker::Food.fruits }
    price { Faker::Number.between(from: 10, to: 20) }
    status { ["Active", "Inactive"] }
    frequency {Faker::Number.between(from: 1, to: 4) }
  end
end