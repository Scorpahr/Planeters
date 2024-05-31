# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Planet.destroy_all if Rails.env.development?

Planet.create(name: "Giggletopia", image: "https://zupimages.net/up/24/22/88n5.png", location: "Cratère des Rires", description: "Une planète où tout est fait de gelée rebondissante, même les montagnes ! Les habitants, les Zygomatiens, passent leur journée à sauter et à faire des acrobaties dans les airs.", price: 105690, max_person: 150, latitude: 1.5924691861503413, longitude: 18.874511718750004)
Planet.create(name: "Wobbletron", image: "https://zupimages.net/up/24/22/zr5f.png", location: "Gouffre des Éclats", description: "Une planète où le sol est couvert de peluches géantes. Les arbres sont des sucres d'orge et les rivières coulent de chocolat chaud. Les Rigoloniens organisent des fêtes de rire tous les soirs.", price: 766790, max_person: 27, latitude: rand(-90..90), longitude: rand(-180..180))
Planet.create(name: "Snickerion", image: "https://zupimages.net/up/24/22/jzku.png", location: "Source des Rigolades", description: "Une planète habitée par des clowns qui vivent dans des maisons en forme de ballons. Les rues sont des pistes de cirque et les voitures sont des petites voitures multicolores.", price: 78523, max_person: 2501, latitude: rand(-90..90), longitude: rand(-180..180))
Planet.create(name: "Fuzzlebop", image: "https://zupimages.net/up/24/22/my05.png", location: "Lagon des Fous Rires", description: "Sur cette planète, tout le monde parle en rimes et fait des farces en permanence. Les Bétislandais adorent les blagues et les jeux de mots et rient du matin au soir.", price: 5290, max_person: 456, latitude: rand(-90..90), longitude: rand(-180..180))
Planet.create(name: "Jesteria", image: "https://zupimages.net/up/24/22/yjyq.png", location: "Bois des Titillements", description: "Une planète peuplée de farfadets malicieux qui aiment cacher des trésors dans des endroits improbables. Les visiteurs doivent résoudre des énigmes farfelues pour les trouver.", price: 12954, max_person: 12, latitude: rand(-90..90), longitude: rand(-180..180))
Planet.create(name: "Bloopdonia", image: "https://zupimages.net/up/24/22/sapi.png", location: "Toundra des Chatouilles", description: "Une planète où les habitants ont des pieds énormes et adorent marcher en cadence. Chaque pas fait vibrer le sol et produit une mélodie joyeuse.", price: 89002, max_person: 56, latitude: rand(-90..90), longitude: rand(-180..180))
Planet.create(name: "Zanyth", image: "https://zupimages.net/up/24/22/wnmp.png", location: "Clairière des Éclats de Rire", description: "Une planète où les animaux sont tous des bouffons et font des spectacles comiques. Les habitants, les Bouffonniques, passent leur temps à assister à ces représentations hilarantes.", price: 672634, max_person: 982, latitude: rand(-90..90), longitude: rand(-180..180))
Planet.create(name: "Quirkosia", image: "https://zupimages.net/up/24/22/mqaq.png", location: "Carrefour du Bouffon", description: "Une planète où la gravité change toutes les heures, rendant les choses très imprévisibles. Les habitants ont appris à voler avec des parapluies enchantés pour se déplacer facilement.", price: 82946, max_person: 76, latitude: rand(-90..90), longitude: rand(-180..180))
Planet.create(name: "Tickleterra", image: "https://zupimages.net/up/24/22/6823.png", location: "Baie des Rires au Ventre", description: "Une planète où les montagnes sont des montagnes russes géantes. Les Zinzinors adorent les sensations fortes et passent leur temps à descendre et remonter ces montagnes.", price: 123987, max_person: 653, latitude: rand(-90..90), longitude: rand(-180..180))
Planet.create(name: "Jibberon", image: "https://zupimages.net/up/24/22/dhyd.png", location: "Sommet des Sottises", description: "Une planète où les arbres parlent et racontent des blagues. Les Foutriquets, les habitants de la planète, se rassemblent autour des arbres pour écouter leurs histoires drôles et partager des rires.", price: 37092, max_person: 33, latitude: rand(-90..90), longitude: rand(-180..180))

# CI-DESSOUS UNE LIGNE VIDE A REMPLIR POUR FAIRE DES SEEDS
# Planet.create(name: "", image: "", location: "", description: "", price: , max_person: )
