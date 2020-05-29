# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "cleaning the data base"

Bottle.destroy_all
# Booking.destroy_all
# User.destroy_all


User.destroy_all

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




amiral_de_beychevelle = Bottle.new(appellation: "Saint Julien", domain: "Amiral de Beychevelle", vintage: "2015", color: "Red", grape_variety: "57% Cabernet Sauvignon, 43% Merlot", aroma: "Fruity", characteristics: "Round and tannic", country: "France", region: "Bordeaux")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/739231.png")
amiral_de_beychevelle.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
amiral_de_beychevelle.save!


chateau_du_tertre = Bottle.new(appellation: "Margaux", domain: "Château du Tertre", vintage: "2016", color: "Red", grape_variety: "75% Cabernet Sauvignon, 10% Merlot, 10% Cabernet Franc, 5% Petit Verdot", aroma: "Woody", characteristics: "Soft and velvety", country: "France", region: "Bordeaux")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/734591.png")
chateau_du_tertre.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
chateau_du_tertre.save!


chateau_la_nerthe = Bottle.new(appellation: "Châteauneuf-du-Pape", domain: "Château La Nerthe", vintage: "2018", color: "White", grape_variety: "40% White Grenache, 40% Roussanne, 15% Clairette; 5% Bourboulenc", aroma: "Floral", characteristics: "Vivid and dry", country: "France", region: "Vallée du Rhône")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/741261.png")
chateau_la_nerthe.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
chateau_la_nerthe.save!


beaune_champimonts = Bottle.new(appellation: "Domaine Chanson", domain: "Beaune Champimonts 1er Cru", vintage: "2015", color: "Red", grape_variety: "Pinot Noir", aroma: "Fruity", characteristics: "Powerful and robust", country: "France", region: "Bourgogne")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/735881.png")
beaune_champimonts.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
beaune_champimonts.save!


minuty_prestige = Bottle.new(appellation: "Minuty Prestige Rosé", domain: "Côtes de Provence", vintage: "2018", color: "Rosé", grape_variety: "Grenache, Tibouren, Syrah and Cinsault", aroma: "Fruity", characteristics: "Soft and full", country: "France", region: "Provence and Corsica")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/740426.png")
minuty_prestige.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
minuty_prestige.save!


chateau_des_tours = Bottle.new(appellation: "Brouilly", domain: "Château des Tours", vintage: "2018", color: "Red", grape_variety: "Gamay", aroma: "Woody", characteristics: "Soft and velvety", country: "France", region: "Beaujolais")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/738125.png")
chateau_des_tours.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
chateau_des_tours.save!


chardonnay_torrontes = Bottle.new(appellation: "Fantelli", domain: "Chardonnay Torrontes", vintage: "2019", color: "White", grape_variety: "55% Chardonnay, 45% Torrontes", aroma: "Fruity", characteristics: "Vivid and dry", country: "Argentina", region: "Argentina")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/743199.png")
chardonnay_torrontes.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
chardonnay_torrontes.save!


piedra_negra = Bottle.new(appellation: "Piedra Negra", domain: "Piedra Negra", vintage: "2019", color: "Red", grape_variety: "Malbec", aroma: "Fruity", characteristics: "Soft and velvety", country: "Argentina", region: "Mendoza")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/744118.png")
piedra_negra.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
piedra_negra.save!


montecampo = Bottle.new(appellation: "Montecampo", domain: "Amarone Della Valpolicella", vintage: "2016", color: "Red", grape_variety: "Corvina, Rondinella, Molinara", aroma: "Fruity", characteristics: "Powerful and robust", country: "Italy", region: "Verona")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/743084.png")
montecampo.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
montecampo.save!


pecorino_volo = Bottle.new(appellation: "Terre Di Chieti", domain: "Pecorino Volo", vintage: "2018", color: "White", grape_variety: "Pecorino", aroma: "Fruity", characteristics: "Vivid and dry", country: "Italy", region: "Abruzzo")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/740599.png")
pecorino_volo.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pecorino_volo.save!

