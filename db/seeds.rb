# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p "seeding the DB with ingredients"

Ingredient.create!(name:"Lemon")
Ingredient.create!(name:"Sugar")
Ingredient.create!(name:"Orange juice")
Ingredient.create!(name:"Gin")
Ingredient.create!(name:"Tonic")
Ingredient.create!(name:"Rhum")
Ingredient.create!(name:"Vodka")

p "seeding the DB with cocktails"

Cocktail.create!(name:"Mojito royal")
Cocktail.create!(name:"GinTo")
Cocktail.create!(name:"Vodka orange")

p"DB is seeded"
