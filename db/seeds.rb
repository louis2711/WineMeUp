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


minuty_prestige = Bottle.new(appellation: "Minuty Prestige Rosé", domain: "Côtes de Provence", vintage: "2018", color: "Rose", grape_variety: "Grenache, Tibouren, Syrah and Cinsault", aroma: "Fruity", characteristics: "Soft and full", country: "France", region: "Provence and Corsica", price_range: "", description: "")
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
file = URI.open("https://www.simonmaye.ch/wp-content/uploads/2018/11/PetiteArvine-min.png")
maye.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
maye.save!

auvernier = Bottle.new(appellation: "Oeil de Perdrix Neuchâtel", domain: "Château d'Auvernier", vintage: "2018", color: "Rose", grape_variety: "Oeil de Perdrix", aroma: "Fruity", characteristics: "Structured", country: "Switzerland", region: "Neuchâtel", price_range: "19", description: "ROBE SAUMONÉE, NEZ DE FRAMBOISE, C’EST UN VIN VIF, EXHUMANT DES ARÔMES DE PINOT NOIR.")
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

moraga = Bottle.new(appellation: "Moraga Bel Air", domain: "Moraga", vintage: "1998", color: "White", grape_variety: "Sauvignon Blanc", aroma: "Floral", characteristics: "Dry", country: "USA", region: "Los Angeles County", price_range: "158", description: "Un blanc typique du domaine qui tient toutes ses promesses. Il se présente avec beaucoup de caractère et possède une éclatante puissance en bouche.")
file = URI.open("https://images.lavinia.fr/spree/products/14873/product/Moraga_Bel_Air_blanc_1998_11819.jpg?1459342777")
moraga.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
moraga.save!

pahlmeyer = Bottle.new(appellation: "Pahlmeyer", domain: "Pahlmeyer", vintage: "1998", color: "Red", grape_variety: "Merlot", aroma: "Fruity", characteristics: "Structured", country: "USA", region: "Napa Valley", price_range: "207", description: "Ce Merlot 1998 est d'une grande finesse, certainement l'un des tous meilleurs produits dans la Napa Valley sur ce millésime. Un jus intense et riche, très juteux, des notes gourmandes cacaotées, de cerises noirs, une touche fumée et toastée : un grand flacon a pleine matûrité!")
file = URI.open("https://images.lavinia.fr/spree/products/21422/product/NAPA_PAHLMEYER_MERLOT_1998-11752_.jpg?1546009295")
pahlmeyer.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pahlmeyer.save!

# France

pontet_canet = Bottle.new(appellation: "Pauillac", domain: "Château Pontet-Canet", vintage: "2013", color: "Red", grape_variety: "cabernet sauvignon, Merlot", aroma: "Fruity", characteristics: "Structured and powerful", country: "France", region: "Bordeaux", price_range: "110", description: "Pour le Château Pontet-Canet, propriété de la famille Tesseron depuis maintenant plus de 40 ans, le millésime 2013 sera synonyme de surprise! En effet, Château Pontet-Canet a déjà pris tout le monde de cours en décidant de commercialiser sa cuvée 2013 une semaine avant la grande étape des dégustations de la presse ; chose inédite dans l'histoire des primeurs!")
file = URI.open("https://images.lavinia.fr/spree/products/9221/product/Chateau_Pontet-Canet_59041.jpg?1396021597")
pontet_canet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pontet_canet.save!

brane_cantenac = Bottle.new(appellation: "Margaux", domain: "Château Brane-Cantenac", vintage: "2016", color: "Red", grape_variety: "Merlot, Cabernet Franc, Cabernet Sauvignon, Carménère", aroma: "Fruity", characteristics: "Structured", country: "France", region: "Bordeaux", price_range: "100", description: "Les vins possèdent une grande richesse aromatique et une splendide trame tannique. Ils ont tous les atouts pour permettre une très longue garde. Le Millésime 2016 : un millésime exceptionnel et « exceptionnellement chanceux ». La chance a été présente de la floraison à la vendange. Les cabernets ont été absolument magnifiques, grâce à l’exceptionnelle résistance à la sécheresse de ce terroir. Un des, sinon le plus grand Brane !")
file = URI.open("https://images.lavinia.fr/spree/products/18083/product/Chateau-Brane-Cantenac_Margaux_2016_71243.jpg?1490966555")
brane_cantenac.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
brane_cantenac.save!

la_lagune = Bottle.new(appellation: "Haut-Médoc", domain: "Château La Lagune", vintage: "2016", color: "Red", grape_variety: "Cabernet Sauvignon, Merlot, Petit Verdot", aroma: "Spicy", characteristics: "Structured", country: "France", region: "Bordeaux", price_range: "77", description: "Le cru a beaucoup gagné en pureté aromatique et en définition, tout en conservant un caractère qui lui est propre, dû au terroir de graves de Ludon, et d'un encépagement faisant appel à une bonne proportion de petit verdot.")
file = URI.open("https://images.lavinia.fr/spree/products/18075/product/La-Lagune_Haut-Medoc_2016_71179.jpg?1490963332")
la_lagune.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
la_lagune.save!


gevrey = Bottle.new(appellation: "Gevrey-Chambertin", domain: "Domaine Alain Burguet, 1er cru Lavaux St Jacques", vintage: "2018", color: "Red", grape_variety: "Pecorino", aroma: "Fruity", characteristics: "Powerful", country: "France", region: "Bourgogne", price_range: "120", description: "Situé dans le village bourguignon de Gevrey-Chambertin, le Domaine Alain Burguet produit, depuis le début des années 1990, des vins de Gevrey denses et parfumés. Accompagné de ses fils Jean-Luc et Eric qui l’accompagnent dans tous les travaux de la vigne et en cave, Alain Burguet privilégie une conduite proche de la culture biologique. Le Lavaux Saint Jacques offre des parfums de fruits noirs éclatants. La bouche, égalemment sur le fruit noir mais légèrement confituré, s'offre avec délice et puissance.")
file = URI.open("https://images.lavinia.fr/spree/products/21907/product/73755_lavaux_burguet.jpg?1551437629")
gevrey.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
gevrey.save!

eugénie = Bottle.new(appellation: "Vosne-Romanée", domain: "Domaine Eugénie", vintage: "2015", color: "Red", grape_variety: "Pinot Noir", aroma: "Fruity", characteristics: "Vivid and dry", country: "Italy", region: "Abruzzo", price_range: "73", description: "Ce vin, d’une belle concentration, présente une trame équilibrée soutenue par une structure souple et fruitée.")
file = URI.open("https://images.lavinia.fr/spree/products/23973/product/70887(ok).JPG?1572517163")
eugénie.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
eugénie.save!


# Italy

figli = Bottle.new(appellation: "Bianchdùdùi", domain: "Bera Vittorio & Figli", vintage: "2000", color: "White", grape_variety: "Moscato", aroma: "Herbal", characteristics: "Low tannins", country: "Italy", region: "Piémont", price_range: "36", description: "L'histoire du domaine est vénérable, elle remonte à 1785, lorsque Giovanni Battista Bera acheta un terrain aux Chevaliers de Malte, alors que cette région était déjà réputée pour ses vignobles.")
file = URI.open("https://images.lavinia.fr/spree/products/22127/product/Bera_Vittorio___Figlio_Bianchd%C3%B9d%C3%B9i_2000_75629.png?1555079824")
figli.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
figli.save!

mastroberardino = Bottle.new(appellation: "Vesuvio Doc", domain: "Mastroberardino", vintage: "2018", color: "White", grape_variety: "Coda di Volpe", aroma: "floral", characteristics: "Light", country: "Italy", region: "Vesuvio", price_range: "21", description: "")
file = URI.open("https://images.lavinia.fr/spree/products/23295/product/Mastroberardino_76350.png?1564651278")
mastroberardino.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
mastroberardino.save!

valpolicella = Bottle.new(appellation: "Amarone Della Valpolicella", domain: "Bertani", vintage: "2009", color: "Red", grape_variety: "Cortese, Molinara, Rondinella", aroma: "Spicy", characteristics: "Structured", country: "Italy", region: "Vénétie", price_range: "180", description: "L’Amarone Classico de Bertani est un vin intemporel qui exprime à merveille le style unique du domaine. Bertani produit de l’Amarone Classico depuis 1958 avec une parfaite harmonie entre le temps, la Nature et l’Homme. L’affinage en tonneaux durant au moins six ans lui donne une grande structure et en fait l’un des vins rouges les plus aptes à vieillir au monde.")
file = URI.open("https://images.lavinia.fr/spree/products/18075/product/La-Lagune_Haut-Medoc_2016_71179.jpg?1490963332")
valpolicella.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
valpolicella.save!


della = Bottle.new(appellation: "Recioto Della Valpolicella", domain: "Quintarelli", vintage: "2007", color: "Red", grape_variety: "Corvina, Rondinella, Molinara", aroma: "Spicy", characteristics: "Powerful", country: "Italy", region: "Vénétie", price_range: "300", description: "A la dégustation, ce vin est exceptionnel. Il offre un bouquet complexe et délicat d'arômes de cerise noire, d'amandes amères, de réglisse, de cacao et de réglisse, complétés de notes balsamiques. La bouche est dotée d'un beau volume mais sans lourdeur, avec une matière dense, concentrée et fine, l'ensemble est très harmonieux et racé. Grand moment de dégustation en perspective !")
file = URI.open("https://images.lavinia.fr/spree/products/22889/product/75834(ok).jpg?1561027957")
della.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
della.save!

dhjetë = Bottle.new(appellation: "Musto Carmelitano", domain: "Dhjetë", vintage: "2017", color: "White", grape_variety: "", aroma: "Fruity", characteristics: "Light", country: "Italy", region: "Basilicate", price_range: "11", description: "")
file = URI.open("https://images.lavinia.fr/spree/products/25160/product/1ITITB0036135(ok).jpg?1587123602")
dhjetë.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
dhjetë.save!


# Spain


mastroberardino = Bottle.new(appellation: "Do Allela", domain: "Celler De Les Aus", vintage: "2018", color: "Red", grape_variety: "Mataro", aroma: "Woody", characteristics: "Light", country: "Spain", region: "Catalogne", price_range: "20", description: "")
file = URI.open("https://images.lavinia.fr/spree/products/23295/product/Mastroberardino_76350.png?1564651278")
mastroberardino.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
mastroberardino.save!

espana = Bottle.new(appellation: "Vino De Espana", domain: "Dominio del Pidio", vintage: "2017", color: "White", grape_variety: "Albillo", aroma: "floral", characteristics: "Light", country: "Spain", region: "", price_range: "70", description: "Dominio del Pidio était à l'origine une cave qui fournissait du vin à toutes sortes de personnalités historiques pendant plus de mille ans. Ce vin dévoile au nez des arômes frais avec beaucoup de fruits. En bouche, le vin est puissant avec une touche aiguisé et se termine sur une finale large. ")
file = URI.open("https://images.lavinia.fr/spree/products/22718/product/100332(ok).jpg?1560351446")
espana.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
espana.save!

duero = Bottle.new(appellation: "Do Ribera Del Duero", domain: "Bodegas y Viñedos Alión", vintage: "2014", color: "Red", grape_variety: "", aroma: "Spicy", characteristics: "High tannins", country: "Spain", region: "Ribera Del Duero", price_range: "91", description: "Les vins de chez Tempos Vega Sicilia sont certainement parmi les plus connus et les plus appréciés au monde. Le domaine a une histoire atypique, les vins ont un caractère très personnel et affirmé. Le propriétaire Pablo Álvarez Mezquiriz a su élaborer, au fil du temps, une gamme très prestigieuse de grands vins sur les terroirs d’Espagne et de Hongrie. Les vins se caractérisent par leur grande élégance, alliant à merveille tradition et modernité une signature unique.")
file = URI.open("https://images.lavinia.fr/spree/products/23295/product/Mastroberardino_76350.png?1564651278")
duero.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
duero.save!

vino = Bottle.new(appellation: "Vino De Espana", domain: "Ismael Gozalo", vintage: "2016", color: "White", grape_variety: "Verdejo", aroma: "Herbal", characteristics: "Light", country: "Spain", region: "", price_range: "26", description: "Un vin minéral, dense, frais, long et complexe qui demande à être carafé.")
file = URI.open("https://images.lavinia.fr/spree/products/20716/product/Ismael_Gozalo__2016_98098.png?1534494193")
vino.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
vino.save!

vesuvio = Bottle.new(appellation: "Vesuvio Doc", domain: "Neno da Ponte", vintage: "2015", color: "Red", grape_variety: "Mencía, Garnacha, Alicante Bouschet, Gran Negro, Godello", aroma: "fruity", characteristics: "Structured", country: "Spain", region: "Galice", price_range: "32", description: "Roberto Regal, « colleiteiro », œnologue et créateur recherche les meilleurs sites de sa Galice natale en vue de récupérer de vieilles vignes de 80 ans en moyenne, où prédomine la mencía, pour élaborer un vin frais qui présente une acidité équilibrée et du volume en bouche.")
file = URI.open("https://images.lavinia.fr/spree/products/18953/product/97898.jpg?1506945022")
vesuvio.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
vesuvio.save!


# South Africa


wo = Bottle.new(appellation: "Stellenbosch Wo", domain: "Hartenberg", vintage: "2016", color: "White", grape_variety: "Coda di Volpe", aroma: "Mineral", characteristics: "Light", country: "South Africa", region: "Coastal Region", price_range: "20", description: "Régulièrement encensé par la critique, le Chardonnay d'Hartenberg séduit par la vitalité et la précision de ses arômes citronnés et légèrement vanillés et par sa grande élégance de texture et de toucher. Une réjouissante composition, entre fraîcheur et plénitude, remarquablement vinifié.")
file = URI.open("https://images.lavinia.fr/spree/products/23717/product/76501.jpg?1570714639")
wo.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wo.save!

stellen = Bottle.new(appellation: "Simonsberg Stellenbosch Wo ", domain: "Warwick", vintage: "2013", color: "Red", grape_variety: "Pinotage", aroma: "Spicy", characteristics: "Powerful", country: "South Africa", region: "Coastal Region", price_range: "28", description: "Three Cape Ladies est un vin rouge sud-african très généreux en saveurs fruitées et mentholées. La bouche se montre très pleine, pulpeuse, gorgée de fruit compoté et d’épice. La structure soutient joliment cette belle matière, en douceur, avec des tanins bien intégrés et ce qu’il faut de fraîcheur. Du caractère et beaucoup de plaisir !")
file = URI.open("https://images.lavinia.fr/spree/products/24683/product/95730(ok).JPG?1581690928")
stellen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
stellen.save!


# Germany

egon = Bottle.new(appellation: "Mosel Pdo", domain: "Egon Müller", vintage: "2018", color: "White", grape_variety: "Riesling", aroma: "Mineral", characteristics: "Dry", country: "Germany", region: "Moselle", price_range: "48", description: "")
file = URI.open("https://images.lavinia.fr/spree/products/24111/product/76814(ok).jpg?1573121022")
egon.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
egon.save!

mosel = Bottle.new(appellation: "Mosel Pdo", domain: "Estate Riesling QbA", vintage: "2017", color: "White", grape_variety: "Coda di Volpe", aroma: "Floral", characteristics: "Light", country: "Germany", region: "Moselle", price_range: "21", description: "")
file = URI.open("https://images.lavinia.fr/spree/products/25100/product/1DEDE60036128(ok).jpg?1587120782")
mosel.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
mosel.save!

# Portugal

doc = Bottle.new(appellation: "Doc Douro", domain: "Niepoort", vintage: "2016", color: "Red", grape_variety: "Tinta Amarela, Touriga Franca, Rufete, Malvazia Preta, Tinta Roriz", aroma: "Spicy", characteristics: "Structured", country: "Portugal", region: "Douro", price_range: "15", description: "La Maison Niepoort est une entreprise familiale fondée en 1842. Lors de l’acquisition de la Quinta de Napoles en 1987, c’est Dirk Neipoort, de la cinquième génération, qui prend les rênes du domaine après s’être découvert une passion pour le vin. Cet amoureux de la vigne travaille sans relâche depuis plusieurs décennies pour tirer le meilleur de ses terres, et signe un vin équilibré, concentré, typique de l’appellation.")
file = URI.open("https://images.lavinia.fr/spree/products/22720/product/100836(ok).jpg?1560351671")
doc.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
doc.save!

douro = Bottle.new(appellation: "Doc Douro", domain: "Quinta do Romeu", vintage: "2014", color: "White", grape_variety: "Gouveio, Arinto, Rabigato", aroma: "Fruity", characteristics: "Light", country: "Portugal", region: "Douro", price_range: "22", description: "Au nez c'est un vin jeune avec une bonne intensité, les arômes ressentis sont les fruits mûrs (tel que la pomme, la pêche et le coing), les fruits tropicaux frais (fruit de la passion et ananas) et les fleurs. Avec une légère touche minérale. En bouche nous avons des saveurs crémeuses avec une acidité très fraîche à caractère fruité, il s'agit d'un vin frais, complexe et profond.L'ensemble révèle beaucoup d'énergie.")
file = URI.open("https://images.lavinia.fr/spree/products/23740/product/V000357.jpg?1570802839")
douro.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
douro.save!

puts "FINISHED !"
