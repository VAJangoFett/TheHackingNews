# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
  user = User.create!(name: Faker::Hobbit.character)
end

15.times do
  link = Link.create!(name: Faker::Internet.domain_name, user_id: rand(1..5))
end

15.times do
  comment = Comment.create!(content: Faker::HowIMetYourMother.quote, user_id: rand(1..5), link_id: rand(1..15))
end

15.times do
  critic = Critic.create!(content: Faker::HowIMetYourMother.quote, user_id: rand(1..5), comment_id: rand(1..15))
end