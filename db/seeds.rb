# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Cocktail.destroy_all
Ingredient.destroy_all

p "seeding the DB with ingredients"

Ingredient.create!(name:"Lemon")
Ingredient.create!(name:"Sugar")
Ingredient.create!(name:"Orange juice")
Ingredient.create!(name:"Gin")
Ingredient.create!(name:"Tonic")
Ingredient.create!(name:"Rhum")
Ingredient.create!(name:"Vodka")
Ingredient.create!(name:"Lime")
Ingredient.create!(name:"Ice")
Ingredient.create!(name:"Red berries")


p "seeding the DB with cocktails"

file_mojito = URI.open("https://img-3.journaldesfemmes.fr/ER-YIDk2hO23pBDcZ7_tbRMLynY=/800x600/smart/8c86ef81e01a405cbeaf3a428927b3f6/recipe-jdf/10025184.jpg")
file_ginto = URI.open("https://www.destinationcocktails.fr/wp-content/uploads/recipes/500_htonik.jpg")
file_vodka = URI.open ("https://www.recettethermomix.com/wp-content/uploads/2020/07/Cocktail-vodka-orange-au-Thermomix.jpg")


mojito = Cocktail.create!(name:"Mojito").photo.attach(io: file_mojito, filename: "mojito.jpg", content_type: "image/jpg")
ginto = Cocktail.create!(name:"GinTo").photo.attach(io: file_ginto, filename: "ginto.jpg", content_type: "image/jpg")
vodka = Cocktail.create!(name:"Vodka orange").photo.attach(io: file_vodka, filename: "vodka.jpg", content_type: "image/jpg")

p"DB is seeded"
