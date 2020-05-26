# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "cleaning the data base"

# Bottle.destroy_all
# Booking.destroy_all
# User.destroy_all
puts "data base cleaned"

puts "creating users"

louis = User.create(email: "louis@lewagon.fr", first_name: "louis", last_name: "f", password: "testtest")
louis.save!

stan = User.create(email: "stan@lewagon.fr", first_name: "stan", last_name: "s", password: "testtest")
stan.save!

hughes = User.create(email: "hughes@lewagon.fr", first_name: "hughes", last_name: "s", password: "testtest")
hughes.save!

jeanne = User.create(email: "jeanne@lewagon.fr", first_name: "jeanne", last_name: "l", password: "testtest")
jeanne.save!

puts "creating bottles"
amiral_de_beychevelle = Bottle.new()
