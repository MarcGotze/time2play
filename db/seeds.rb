# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Boardgame.destroy_all
Player.destroy_all

puts "=========================================================================="
puts "Creating games..."
puts "=========================================================================="
new_game = Boardgame.create(
  title: "Descent: Legends of the Dark",
  description: "Descent : Légendes des Ténèbres est une nouvelle édition entièrement révisée de Descent : Voyage dans les Ténèbres.",
  play_time: 180,
  age: 14,
  image:"https://cf.geekdo-images.com/Q96PxRVbrDxS9_4ZPTJtHQ__original/img/kGU8ligha3fyP0LuVTwmLMK9yEQ=/0x0/filters:format(png)/pic5941333.png",
  rating: 8.0,
  min_player: 1,
  max_player: 4,
  category:"Dungeon Crawler, Médiéval, Fantastique, Magie"
)
puts "#{new_game.title } added to the db !"

new_game = Boardgame.create(
  title: "Gloomhaven: Jaws of the Lion",
  description: "Gloomhaven - Les Mâchoires du Lion est un jeu autonome qui se déroule avant les événements de Gloomhaven.
                Le jeu comprend quatre nouveaux personnages qui peuvent également être utilisés dans le jeu original.",
  play_time: 180,
  age: 12,
  image:"https://cf.geekdo-images.com/_HhIdavYW-hid20Iq3hhmg__imagepage/img/JUEcmeR5Cm5haFjoG5f_Uv8Zlws=/fit-in/900x600/filters:no_upscale():strip_icc()/pic5055631.jpg",
  rating: 8.5,
  min_player: 1,
  max_player: 4,
  category:"Médiéval, Aventure, Fantastique, Exploration"
)
puts "#{new_game.title } added to the db !"

new_game = Boardgame.create(
  title: "7 Wonders Duel",
  description: "7 Wonders Duel est l'adaptation 2 joueurs de 7 Wonders. Triomphez de votre adversaire en développant
                et améliorant votre civilisation sur les plans civil, scientifique et militaire.",
  play_time: 60,
  age: 10,
  image:"https://cf.geekdo-images.com/zdagMskTF7wJBPjX74XsRw__imagepage/img/HdJ4d4O1P89V4UIhZnL3zoYnjow=/fit-in/900x600/filters:no_upscale():strip_icc()/pic2576399.jpg",
  rating: 8.1,
  min_player: 2,
  max_player: 2,
  category:"Antiquité"
)
puts "#{new_game.title } added to the db !"

new_game = Boardgame.create(
  title: "Horreur à Arkham: le jeu de cartes",
  description: "Retrouvez le jeu de cartes évolutif et coopératif Horreur à Arkham, dans une version révisée pour 1 à 4 joueurs.",
  play_time: 120,
  age: 14,
  image:"https://cf.geekdo-images.com/B5F5ulz0UivNgrI9Ky0euA__imagepage/img/tgpLRvv6AIsClnegErNpAoieeMo=/fit-in/900x600/filters:no_upscale():strip_icc()/pic3122349.jpg",
  rating: 8.1,
  min_player: 1,
  max_player: 4,
  category:"Horreur, Fantastique"
)
puts "#{new_game.title } added to the db !"

new_game = Boardgame.create(
  title: "Everdell",
  description: "Everdell est un jeu de placement d'ouvriers facile à apprendre dans lequel les joueurs auront pour mission
                de développer un village habité par des animaux forestiers.",
  play_time: 60,
  age: 10,
  image:"https://cf.geekdo-images.com/fjE7V5LNq31yVEW_yuqI-Q__imagepage/img/ijYTk6KGtxLRdIvLsGar13ZHs4c=/fit-in/900x600/filters:no_upscale():strip_icc()/pic3918905.png",
  rating: 8.0,
  min_player: 1,
  max_player: 4,
  category:"Animaux, Fantastique"
)
puts "#{new_game.title } added to the db !"

new_game = Boardgame.create(
  title: "Splendor",
  description: "Splendor est un jeu de développement et d'acquisition de ressources !
                Gérez au mieux vos cartes et soyez le premier à obtenir 15 points de prestige.",
  play_time: 60,
  age: 10,
  image:"https://cf.geekdo-images.com/rwOMxx4q5yuElIvo-1-OFw__imagepage/img/qXhBOrqJMEeA0pe6TMzWNZUTlbk=/fit-in/900x600/filters:no_upscale():strip_icc()/pic1904079.jpg",
  rating: 7.4,
  min_player: 2,
  max_player: 4,
  category:"Renaissance"
)
puts "#{new_game.title } added to the db !"

new_game = Boardgame.create(
  title: "Catan - A l'aube de l'Humanité",
  description: "Catan : À l’Aube de l’Humanité vous invite à jouer les débuts de l’histoire de l’humanité.
                Réussirez-vous à faire migrer vos tribus d’Afrique vers l’Europe, l’Asie, l’Océanie et l’Amérique
                et à les installer dans leur nouvel environnement ?",
  play_time: 120,
  age: 10,
  image:"https://cf.geekdo-images.com/FzoJROQvm-4mfwG7qYn8Wg__imagepage/img/uR3Pb_GdBaRIcg6HjXvK9X7dKH4=/fit-in/900x600/filters:no_upscale():strip_icc()/pic6881111.jpg",
  rating: 7.4,
  min_player: 3,
  max_player: 4,
  category:"Commerce, Développement, Préhistoire"
)
puts "#{new_game.title } added to the db !"

new_game = Boardgame.create(
  title: "Les Tavernes de la Vallée Profonde",
  description: "Le village de Tiefenthal attire les citoyens de la région grâce à ses rue commerçantes aux bistrots populaires...
                À la tête de votre taverne, donnez-vous les moyens d'attirer de nouveaux clients fortunés",
  play_time: 60,
  age: 12,
  image:"https://cf.geekdo-images.com/H-AU-nhjCbaxWlWj_O-eFw__imagepage/img/2pPYnHCB4u6gUne7p2k-w8q3YfI=/fit-in/900x600/filters:no_upscale():strip_icc()/pic4873141.jpg",
  rating: 7.6,
  min_player: 2,
  max_player: 4,
  category:"Commerce, Développement, Médiéval"
)
puts "#{new_game.title } added to the db !"

puts "=========================================================================="
puts "Boardgames completed !"
puts "=========================================================================="

puts "=========================================================================="
puts "Creating parties..."
puts "=========================================================================="
10.times do
  Party.create!(
    start_time: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now),
    end_time: Faker::Time.between(from: DateTime.now - 5, to: DateTime.now),
    boardgame: Boardgame.all.shuffle.first
  )
end
puts "=========================================================================="
puts "Parties completed !"
puts "=========================================================================="

puts "=========================================================================="
puts "Boardgames completed !"
puts "=========================================================================="

puts "=========================================================================="
puts "Creating players..."
puts "=========================================================================="
10.times do
  Player.create!(
    score: rand(0..500),
    username: Faker::Name.first_name,
    party: Party.all.shuffle.first,
    user: User.all.shuffle.first)
end
puts "=========================================================================="
puts "players completed !"
puts "=========================================================================="
