# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Boardgame.destroy_all
User.destroy_all
Party.destroy_all

puts "=========================================================================="
puts "Creating games..."
puts "=========================================================================="

descent = URI.open("https://cf.geekdo-images.com/Q96PxRVbrDxS9_4ZPTJtHQ__original/img/kGU8ligha3fyP0LuVTwmLMK9yEQ=/0x0/filters:format(png)/pic5941333.png")
boardgame = Boardgame.create(
  title: "Descent: Legends of the Dark",
  description: "Descent : Légendes des Ténèbres est une nouvelle édition entièrement révisée de Descent : Voyage dans les Ténèbres.",
  play_time: 180,
  age: 14,
  rating: 8.0,
  min_player: 1,
  max_player: 4,
  category:"Dungeon Crawler, Médiéval, Fantastique, Magie"
)
boardgame.photo.attach(io: descent, filename: "pic5941333.png", content_type: "image/png")
puts boardgame.title

gloomhaven = URI.open("https://cf.geekdo-images.com/_HhIdavYW-hid20Iq3hhmg__imagepage/img/JUEcmeR5Cm5haFjoG5f_Uv8Zlws=/fit-in/900x600/filters:no_upscale():strip_icc()/pic5055631.jpg")
boardgame = Boardgame.create(
  title: "Gloomhaven: Jaws of the Lion",
  description: "Gloomhaven - Les Mâchoires du Lion est un jeu autonome qui se déroule avant les événements de Gloomhaven.
                Le jeu comprend quatre nouveaux personnages qui peuvent également être utilisés dans le jeu original.",
  play_time: 180,
  age: 12,
  rating: 8.5,
  min_player: 1,
  max_player: 4,
  category:"Médiéval, Aventure, Fantastique, Exploration"
)
boardgame.photo.attach(io: gloomhaven, filename: "pic5055631.jpg", content_type: "image/png")
puts boardgame.title

wonders = URI.open("https://cf.geekdo-images.com/zdagMskTF7wJBPjX74XsRw__imagepage/img/HdJ4d4O1P89V4UIhZnL3zoYnjow=/fit-in/900x600/filters:no_upscale():strip_icc()/pic2576399.jpg")
boardgame = Boardgame.create(
  title: "7 Wonders Duel",
  description: "7 Wonders Duel est l'adaptation 2 joueurs de 7 Wonders. Triomphez de votre adversaire en développant
                et améliorant votre civilisation sur les plans civil, scientifique et militaire.",
  play_time: 60,
  age: 10,
  rating: 8.1,
  min_player: 2,
  max_player: 2,
  category:"Antiquité"
)
boardgame.photo.attach(io: wonders, filename: "pic2576399.jpg", content_type: "image/png")
puts boardgame.title

arkham = URI.open("https://cf.geekdo-images.com/B5F5ulz0UivNgrI9Ky0euA__imagepage/img/tgpLRvv6AIsClnegErNpAoieeMo=/fit-in/900x600/filters:no_upscale():strip_icc()/pic3122349.jpg")
boardgame = Boardgame.create(
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
boardgame.photo.attach(io: arkham, filename: "pic3122349.jpg", content_type: "image/png")
puts boardgame.title

everdell = URI.open("https://cf.geekdo-images.com/fjE7V5LNq31yVEW_yuqI-Q__imagepage/img/ijYTk6KGtxLRdIvLsGar13ZHs4c=/fit-in/900x600/filters:no_upscale():strip_icc()/pic3918905.png")
boardgame = Boardgame.create(
  title: "Everdell",
  description: "Everdell est un jeu de placement d'ouvriers facile à apprendre dans lequel les joueurs auront pour mission
                de développer un village habité par des animaux forestiers.",
  play_time: 60,
  age: 10,
  rating: 8.0,
  min_player: 1,
  max_player: 4,
  category:"Animaux, Fantastique"
)
boardgame.photo.attach(io: everdell, filename: "pic3918905.png", content_type: "image/png")
puts boardgame.title

splendor = URI.open("https://cf.geekdo-images.com/rwOMxx4q5yuElIvo-1-OFw__imagepage/img/qXhBOrqJMEeA0pe6TMzWNZUTlbk=/fit-in/900x600/filters:no_upscale():strip_icc()/pic1904079.jpg")
boardgame = Boardgame.create(
  title: "Splendor",
  description: "Splendor est un jeu de développement et d'acquisition de ressources !
                Gérez au mieux vos cartes et soyez le premier à obtenir 15 points de prestige.",
  play_time: 60,
  age: 10,
  rating: 7.4,
  min_player: 2,
  max_player: 4,
  category:"Renaissance"
)
boardgame.photo.attach(io: splendor, filename: "pic1904079.jpg", content_type: "image/png")
puts boardgame.title

catan = URI.open("https://cf.geekdo-images.com/FzoJROQvm-4mfwG7qYn8Wg__imagepage/img/uR3Pb_GdBaRIcg6HjXvK9X7dKH4=/fit-in/900x600/filters:no_upscale():strip_icc()/pic6881111.jpg")
boardgame = Boardgame.create(
  title: "Catan - A l'aube de l'Humanité",
  description: "Catan : À l’Aube de l’Humanité vous invite à jouer les débuts de l’histoire de l’humanité.
                Réussirez-vous à faire migrer vos tribus d’Afrique vers l’Europe, l’Asie, l’Océanie et l’Amérique
                et à les installer dans leur nouvel environnement ?",
  play_time: 120,
  age: 10,
  rating: 7.4,
  min_player: 3,
  max_player: 4,
  category:"Commerce, Développement, Préhistoire"
)
boardgame.photo.attach(io: catan, filename: "pic6881111.jpg", content_type: "image/png")
puts boardgame.title

tavern = URI.open("https://cf.geekdo-images.com/H-AU-nhjCbaxWlWj_O-eFw__imagepage/img/2pPYnHCB4u6gUne7p2k-w8q3YfI=/fit-in/900x600/filters:no_upscale():strip_icc()/pic4873141.jpg")
boardgame = Boardgame.create(
  title: "Les Tavernes de la Vallée Profonde",
  description: "Le village de Tiefenthal attire les citoyens de la région grâce à ses rue commerçantes aux bistrots populaires...
                À la tête de votre taverne, donnez-vous les moyens d'attirer de nouveaux clients fortunés",
  play_time: 60,
  age: 12,
  rating: 7.6,
  min_player: 2,
  max_player: 4,
  category:"Commerce, Développement, Médiéval"
)
boardgame.photo.attach(io: tavern, filename: "pic4873141.jpg", content_type: "image/png")
puts boardgame.title

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
puts "Creating players..."
puts "=========================================================================="

patrick = URI.open("https://static1.purebreak.com/articles/5/20/05/85/@/728213-patrick-l-etoile-de-mer-sera-la-star-du-diapo-2.jpg")
user = User.create(
  username: "Patrick",
  email: "patrick@gmail.com",
  password: "azerty",
)
user.avatar.attach(io: patrick, filename: "728213-patrick-l-etoile-de-mer-sera-la-star-du-diapo-2.jpg", content_type: "image/jpg")
puts user.username

sandy = URI.open("https://costumesheaven.b-cdn.net/wp-content/uploads/2022/02/sandycheeks_1.jpg")
user = User.create(
  username: "Sandy",
  email: "sandy@gmail.com",
  password: "azerty",
)
user.avatar.attach(io: sandy, filename: "sandycheeks_1.jpg", content_type: "image/jpg")
puts user.username

carlo = URI.open("https://static.wikia.nocookie.net/bob-leponge/images/0/05/Squidward_stock_art.png/revision/latest?cb=20190801142211&path-prefix=fr")
user = User.create(
  username: "Carlo",
  email: "carlo@gmail.com",
  password: "azerty",
)
user.avatar.attach(io: carlo, filename: "carlo.jpg", content_type: "image/jpg")
puts user.username

krabs = URI.open("https://upload.wikimedia.org/wikipedia/en/thumb/f/f8/Mr._Krabs.svg/1200px-Mr._Krabs.svg.png")
user = User.create(
  username: "Krabs",
  email: "krabs@gmail.com",
  password: "azerty",
)
user.avatar.attach(io: krabs, filename: "1200px-Mr._Krabs.svg.png", content_type: "image/png")
puts user.username

plancton = URI.open("https://static.wikia.nocookie.net/villains-fr/images/6/6b/EvilPlankton24.png/revision/latest?cb=20200807094048&path-prefix=fr")
user = User.create(
  username: "Plancton",
  email: "plancton@gmail.com",
  password: "azerty",
)
user.avatar.attach(io: plancton, filename: "plancton.png", content_type: "image/png")
puts user.username

kenshiro = URI.open("https://static.wikia.nocookie.net/hokuto-no-ken-le-survivant-fr/images/c/cc/T%C3%A9l%C3%A9chargement_%2831%29.jpeg/revision/latest?cb=20200806023516&path-prefix=fr")
user = User.create(
  username: "Kenshiro",
  email: "kenshiro@gmail.com",
  password: "azerty",
)
user.avatar.attach(io: kenshiro, filename: "kenshiro.png", content_type: "image/png")
puts user.username

bob = URI.open("https://casoar.org/wp-content/uploads/2020/10/Bob-leponge.png")
user = User.create(
  username: "Bob",
  email: "bob@gmail.com",
  password: "azerty",
)
user.avatar.attach(io: bob, filename: "Bob-leponge.png", content_type: "image/png")
puts user.username

puts "=========================================================================="
puts "players completed !"
puts "=========================================================================="

puts "=========================================================================="
puts "Creating challenges..."
puts "=========================================================================="

challenge = Challenge.create(
  title: "Gagner 10 parties",
  category: "Badge",
  boardgame: Boardgame.all.sample,
  description: "ceci est une super description"
)
puts challenge.title

challenge = Challenge.create(
  title: "Gagner 5 parties",
  category: "Badge",
  boardgame: Boardgame.all.sample,
  description: "ceci est une super description"
)
puts challenge.title

challenge = Challenge.create(
  title: "Gagner 3 parties",
  category: "Badge",
  boardgame: Boardgame.all.sample,
  description: "ceci est une super description"
)
puts challenge.title

challenge = Challenge.create(
  title: "Gagner 5 fois de suite",
  category: "Badge",
  boardgame: Boardgame.all.sample,
  description: "ceci est une super description"
)
puts challenge.title

puts "=========================================================================="
puts "challenges completed !"
puts "=========================================================================="
