# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'database_cleaner/active_record'

p 'Cleaning database...'
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

500.times do
    @prize = Prize.create(
        name: Faker::Commerce.product_name,
        answer: rand(1..999999),
        key: Faker::Alphanumeric.alpha(number: 16)
    )

    p @prize
end