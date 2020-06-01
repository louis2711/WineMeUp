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


amiral_de_beychevelle = Bottle.new(appellation: "Saint Julien", domain: "Amiral de Beychevelle", vintage: "2015", color: "Red", grape_variety: "57% Cabernet Sauvignon, 43% Merlot", aroma: "Fruity", characteristics: "Round and tannic", country: "France", region: "Bordeaux", price_range: "", description: "")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/739231.png")
amiral_de_beychevelle.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
amiral_de_beychevelle.save!


chateau_du_tertre = Bottle.new(appellation: "Margaux", domain: "Château du Tertre", vintage: "2016", color: "Red", grape_variety: "75% Cabernet Sauvignon, 10% Merlot, 10% Cabernet Franc, 5% Petit Verdot", aroma: "Woody", characteristics: "Soft and velvety", country: "France", region: "Bordeaux", price_range: "", description: "")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/734591.png")
chateau_du_tertre.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
chateau_du_tertre.save!


chateau_la_nerthe = Bottle.new(appellation: "Châteauneuf-du-Pape", domain: "Château La Nerthe", vintage: "2018", color: "White", grape_variety: "40% White Grenache, 40% Roussanne, 15% Clairette; 5% Bourboulenc", aroma: "Floral", characteristics: "Vivid and dry", country: "France", region: "Vallée du Rhône", price_range: "", description: "")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/741261.png")
chateau_la_nerthe.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
chateau_la_nerthe.save!


beaune_champimonts = Bottle.new(appellation: "Domaine Chanson", domain: "Beaune Champimonts 1er Cru", vintage: "2015", color: "Red", grape_variety: "Pinot Noir", aroma: "Fruity", characteristics: "Powerful and robust", country: "France", region: "Bourgogne", price_range: "", description: "")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/735881.png")
beaune_champimonts.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
beaune_champimonts.save!


minuty_prestige = Bottle.new(appellation: "Minuty Prestige Rosé", domain: "Côtes de Provence", vintage: "2018", color: "Rosé", grape_variety: "Grenache, Tibouren, Syrah and Cinsault", aroma: "Fruity", characteristics: "Soft and full", country: "France", region: "Provence and Corsica", price_range: "", description: "")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/740426.png")
minuty_prestige.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
minuty_prestige.save!


chateau_des_tours = Bottle.new(appellation: "Brouilly", domain: "Château des Tours", vintage: "2018", color: "Red", grape_variety: "Gamay", aroma: "Woody", characteristics: "Soft and velvety", country: "France", region: "Beaujolais", price_range: "", description: "")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/738125.png")
chateau_des_tours.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
chateau_des_tours.save!


chardonnay_torrontes = Bottle.new(appellation: "Fantelli", domain: "Chardonnay Torrontes", vintage: "2019", color: "White", grape_variety: "55% Chardonnay, 45% Torrontes", aroma: "Fruity", characteristics: "Vivid and dry", country: "Argentina", region: "Argentina", price_range: "", description: "")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/743199.png")
chardonnay_torrontes.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
chardonnay_torrontes.save!


piedra_negra = Bottle.new(appellation: "Piedra Negra", domain: "Piedra Negra", vintage: "2019", color: "Red", grape_variety: "Malbec", aroma: "Fruity", characteristics: "Soft and velvety", country: "Argentina", region: "Mendoza", price_range: "", description: "")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/744118.png")
piedra_negra.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
piedra_negra.save!


montecampo = Bottle.new(appellation: "Montecampo", domain: "Amarone Della Valpolicella", vintage: "2016", color: "Red", grape_variety: "Corvina, Rondinella, Molinara", aroma: "Fruity", characteristics: "Powerful and robust", country: "Italy", region: "Verona", price_range: "", description: "")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/743084.png")
montecampo.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
montecampo.save!


pecorino_volo = Bottle.new(appellation: "Terre Di Chieti", domain: "Pecorino Volo", vintage: "2018", color: "White", grape_variety: "Pecorino", aroma: "Fruity", characteristics: "Vivid and dry", country: "Italy", region: "Abruzzo", price_range: "", description: "")
file = URI.open("https://www.monvinamoi.com/upload/images/PHOTOS_PRODUITS/740599.png")
pecorino_volo.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pecorino_volo.save!

# Switzerland

galotta = Bottle.new(appellation: "Galotta Grillette", domain: "Grillette", vintage: "2015", color: "Red", grape_variety: "Gallotta", aroma: "Fruity", characteristics: "Light", country: "Switzerland", region: "Neuchâtel", price_range: "28", description: "Sa robe est rouge rubis, très profonde et soutenue. Au nez, la typicité du gamay, avec ses fruits rouges et bien mise en avant. En bouche, l’ancelotta lui confère sa structure, sa charpente et son intensité.")
file = URI.open("https://www.pywinery.com/2443-large_default/galotta-2015-grillette-75cl.jpg")
galotta.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
galotta.save!

chappaz = Bottle.new(appellation: "Grain Noir Valais", domain: "Marie Thérèse Chappaz", vintage: "2015", color: "Red", grape_variety: "Merlot", aroma: "Fruity", characteristics: "Dry", country: "Switzerland", region: "Valais", price_range: "69", description: "Robe grenat foncé. Nez original de baies noires (sureau, myrtille), agrumes confits, kiwi, café et cuir. Bouche pleine, délicate, droite, dotée de nombreux tannins satinés et d'une grande persistance aromatique.")
file = URI.open("https://www.lespassionnesduvin.com/media/catalog/product/cache/1/thumbnail/198x/17f82f742ffe127f42dca9de82fb58b1/g/r/grain-noir-valais-chappaz-suisse-11404.jpg")
chappaz.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
chappaz.save!

maye = Bottle.new(appellation: "Petite Arvine Valais", domain: "Simon Maye", vintage: "2019", color: "White", grape_variety: "Petite Arvine", aroma: "Fruity", characteristics: "Structured", country: "Switzerland", region: "Valais", price_range: "26", description: "Vin sec, expressif avec une acidité fine et salée soutenant des arômes de rhubarbe, fruit de la passion et pamplemousse")
file = URI.open("https://images.lavinia.fr/spree/products/37818/product/1AUAU10025359.jpg?1588671809")
maye.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
maye.save!

auvernier = Bottle.new(appellation: "Oeil de Perdrix Neuchâtel", domain: "Château d'Auvernier", vintage: "2018", color: "Rosé", grape_variety: "Oeil de Perdrix", aroma: "Fruity", characteristics: "Structured", country: "Switzerland", region: "Neuchâtel", price_range: "19", description: "ROBE SAUMONÉE, NEZ DE FRAMBOISE, C’EST UN VIN VIF, EXHUMANT DES ARÔMES DE PINOT NOIR.")
file = URI.open("https://www.obrist.ch/assets/media/product/images/17165-17165-15124-12753-7326-4957-5650-1-11132-11864-12441-17459-18402-19137-zoom.png")
auvernier.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
auvernier.save!

# Argentina

achaval_ferrer = Bottle.new(appellation: "Altamira Malbec", domain: "Achaval Ferrer", vintage: "2010", color: "Red", grape_variety: "Malbec", aroma: "Fruity", characteristics: "Structured", country: "Argentina", region: "Mendoza", price_range: "105", description: "Avec la cuvée Altamira Malbec, le domaine argentin Achaval Ferrer a voulu donner au vin toute la puissance du terroir. Le malbec est le cépage phare en Argentine et le domaine, dans son millésime 2009, le sublime. Puissant et complexe, cet Altamire Malbec est un vin de caractère. Les amateurs vont se l'arracher.")
file = URI.open("https://images.lavinia.fr/spree/products/13611/product/Achaval_ferrer_Altamira_Malbec_2010_66242.jpg?1443514250")
achaval_ferrer.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
achaval_ferrer.save!

monteviejo = Bottle.new(appellation: "Monteviejo", domain: "Lindaflor", vintage: "2013", color: "Red", grape_variety: "Malbec", aroma: "Fruity", characteristics: "Structured", country: "Argentina", region: "Mendoza", price_range: "40", description: "")
file = URI.open("https://images.lavinia.fr/spree/products/23997/product/76837(ok).jpg?1572519640")
monteviejo.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
monteviejo.save!

monteviejo_chardonnay = Bottle.new(appellation: "Monteviejo", domain: "Lindaflor", vintage: "2017", color: "White", grape_variety: "Chardonnay", aroma: "Floral", characteristics: "Structured", country: "Argentina", region: "Mendoza", price_range: "34", description: "")
file = URI.open("https://images.lavinia.fr/spree/products/23999/product/76839(ok).jpg?1572519840")
monteviejo_chardonnay.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
monteviejo_chardonnay.save!

# Australia

penfolds_grange = Bottle.new(appellation: "Grange", domain: "Penfold's", vintage: "2010", color: "Red", grape_variety: "Syrah", aroma: "Fruity", characteristics: "High Tannins", country: "Australia", region: "Shiraz", price_range: "785", description: "Penfold's Grange est sans doute la plus célèbre appellation de vin du Sud de l'Australie. Le millésime 2010 est un vin intense, aromatisé et structuré. d'une robe rouge violacée le nez a des arômes de fruits rouges et d'anis. La bouche est expressive avec des tanins intenses et équilibrés. Une structure classique, magnifiquement bien proportionné.")
file = URI.open("https://images.lavinia.fr/spree/products/16187/product/PENFOLD'S_GRANGE_2010_63798.jpg?1470666217")
penfolds_grange.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
penfolds_grange.save!

john_duval = Bottle.new(appellation: "John Duval Entity", domain: "John Duval", vintage: "2014", color: "Red", grape_variety: "Syrah", aroma: "Spicy", characteristics: "Powerful", country: "Australia", region: "Shiraz", price_range: "37", description: "Identity Rouge est un vin qui s’ouvre sur des notes de mûres et de prunes. En bouche, ce vin est structuré avec une grande concentration de fruits noirs. Long et riche, il est équilibré grâce à des tannins savoureux, et de fines notes épicées. Un vin éclatant et intense qui révèle la beauté du terroir de Barossa.")
file = URI.open("https://images.lavinia.fr/spree/products/37818/product/1AUAU10025359.jpg?1588671809")
john_duval.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
john_duval.save!

azizas_chardonnay = Bottle.new(appellation: "Azizas Chardonnay", domain: "Harkham Wines", vintage: "2017", color: "White", grape_variety: "Chardonnay", aroma: "Mineral", characteristics: "Acid", country: "Australia", region: "Hunter Valley", price_range: "25", description: "Harkham Wines est l’histoire d'une belle aventure, celle de Richard Harkham, qui a voyagé et goûté assez de vin pour réaliser son rêve avec ce domaine. Richard, dit « Richie » croit fermement que le vin est la chose la plus pure et sainte sur terre. Ces vins s’inscrivent dans une viticulture durable pour sublimer la pureté du terroir d’Hunter Valley. Harkham est le seul domaine australien casher. Le Shiraz provient de deux grandes par-celles à proximité de la cave, ces raisins révèlent la typicité de leur terroir avec une belle acidité.")
file = URI.open("https://images.lavinia.fr/spree/products/22599/product/75945(ok).jpg?1559662198")
azizas_chardonnay.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
azizas_chardonnay.save!

cape_mentelle = Bottle.new(appellation: "Cape Mentelle Margeret River", domain: "Cape Mentelle", vintage: "2017", color: "White", grape_variety: "Sauvignon Blanc & Sémillon", aroma: "Floral", characteristics: "Dry", country: "Australia", region: "Margaret River", price_range: "19", description: "")
file = URI.open("https://images.lavinia.fr/spree/products/23928/product/76696(ok).JPG?1572016592")
cape_mentelle.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
cape_mentelle.save!

# USA

harlan = Bottle.new(appellation: "Harlan", domain: "Harlan Estate", vintage: "1995", color: "Red", grape_variety: "Cabernet Sauvignon", aroma: "Fruity", characteristics: "Powerful", country: "USA", region: "Napa Valley", price_range: "1236", description: "Situé sur les collines à l'ouest d'Oakville, en Californie, Harlan Estate produit des vins à partir des cépages bordelais traditionnels : cabernets, merlot et petit verdot. C'est un domaine familial, fondé par Bill Harlan. Conseillé par l'oenologue Michel Rolland, le domaine produit une cuvée principale ainsi qu'un excellent second vin nommé The Maiden.")
file = URI.open("https://images.lavinia.fr/spree/products/19356/product/Harlan_Cabernet_Sauvignon_1995_11731.jpg?1511799144")
harlan.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
harlan.save!

moraga = Bottle.new(appellation: "Moraga Bel Air", domain: "Moraga", vintage: "1998", color: "White", grape_variety: "Sauvgnon Blanc", aroma: "Floral", characteristics: "Dry", country: "USA", region: "Los Angeles County", price_range: "158", description: "Un blanc typique du domaine qui tient toutes ses promesses. Il se présente avec beaucoup de caractère et possède une éclatante puissance en bouche.")
file = URI.open("https://images.lavinia.fr/spree/products/14873/product/Moraga_Bel_Air_blanc_1998_11819.jpg?1459342777")
moraga.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
moraga.save!

pahlmeyer = Bottle.new(appellation: "Pahlmeyer", domain: "Pahlmeyer", vintage: "1998", color: "Red", grape_variety: "Merlot", aroma: "Fruity", characteristics: "Structured", country: "USA", region: "Napa Valley", price_range: "207", description: "Ce Merlot 1998 est d'une grande finesse, certainement l'un des tous meilleurs produits dans la Napa Valley sur ce millésime. Un jus intense et riche, très juteux, des notes gourmandes cacaotées, de cerises noirs, une touche fumée et toastée : un grand flacon a pleine matûrité!")
file = URI.open("https://images.lavinia.fr/spree/products/21422/product/NAPA_PAHLMEYER_MERLOT_1998-11752_.jpg?1546009295")
pahlmeyer.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pahlmeyer.save!






















