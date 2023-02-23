# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@cust_1 = Customer.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, address: Faker::Address.full_address)
@cust_2 = Customer.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, address: Faker::Address.full_address)
@cust_3 = Customer.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, address: Faker::Address.full_address)

@tea_1 = Tea.create(title: "Tea minus 10", description: "A steap countdown", temperature: Faker::Number.between(from: 85, to: 115), brew_time: Faker::Number.between(from: 5, to: 10 ))
@tea_2 = Tea.create(title: "Mr. T", description: "Peppermint punch to your senses", temperature: Faker::Number.between(from: 95, to: 115), brew_time: Faker::Number.between(from: 6, to: 10 )) 
@tea_3 = Tea.create(title: "Teazing you", description: "Joke of a tea", temperature: Faker::Number.between(from: 55, to: 100), brew_time: Faker::Number.between(from: 3, to: 10 ) )
@tea_3 = Tea.create(title: "Tea-ching moment", description: "Let your senses learn", temperature: Faker::Number.between(from: 115, to: 200), brew_time: Faker::Number.between(from: 7, to: 15 ) )

@sub_1 = @cust_1.subscriptions.create!(title: "Winter Warmth", price: 20, status: "Active", Frequency: 1, tea_id: @tea_1.id )
@sub_2 = @cust_1.subscriptions.create!(title: "International Meddley", price: 50, status: "Inactive", Frequency: 4, tea_id: @tea_2.id )
@sub_3 = @cust_2.subscriptions.create!(title: "Summer Breeze", price: 30, status: "Active", Frequency: 3, tea_id: @tea_3.id )
@sub_4 = @cust_2.subscriptions.create!(title: "Fantastic Classic", price: 20, status: "Inactive", Frequency: 2, tea_id: @tea_4.id )