# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'


# 5.times do
# user = {:first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name, :email => Faker::Internet.email, :password => 'password', :is_scottish => true  }

# User.create!(user)

# end

# 5.times do
#   recipe = {:name => Faker::Food.dish, :prep_time => rand(1..120), :difficulty => rand(1..5), :instructions => Faker::Hipster.sentence(4), :chef_id => rand(1..5), :category_id => rand(1..5)}

#   Recipe.create!(recipe)
# end




Category.create!(:name => "Dinner")
Category.create!(:name => "Lunch")
Category.create!(:name => "Breakfast")
Category.create!(:name => "Dessert")





