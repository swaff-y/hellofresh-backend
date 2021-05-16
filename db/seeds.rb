# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
Week.destroy_all

recipe_array = []
10.times do |i|
  recipe = Recipe.create(
    name: Faker::Food.dish,
    ingredients: '227g tub clotted cream, 25g butter, 1 tsp cornflour,100g parmesan, grated nutmeg, 250g fresh fettuccine or tagliatelle, snipped chives or chopped parsley to serve (optional)',
    instruction: Faker::Food.description
  )
  recipe_array.push recipe
end

week_array=[]
10.times do |i|
  week = Week.create(
    name: Faker::Superhero.name,
    number: i
  )
  week_array.push week
end

10.times do |i|
  week_array[i].recipes << recipe_array[i]
end


puts "Testing Weeks >-< Recipes associations:"
puts "The week '#{ Week.first.name }' has recipes #{Week.first.recipes.pluck(:name).join(", ")}"
puts "The Recipes #{ Recipe.last.name } has weeks: #{ Recipe.last.weeks.pluck(:name).join(', ') }"
