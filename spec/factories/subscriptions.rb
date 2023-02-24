FactoryBot.define do
  factory :subscription do 
    tea 
    customer
    title { Faker::Food.fruits }
    price { Faker::Number.between(from: 10.00, to: 20.50) }
    status { ["Active", "Inactive"] }
    frequency {Faker::Number.between(from: 0, to: 2) }
  end
end