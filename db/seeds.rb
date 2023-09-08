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
Achievement.destroy_all

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

twilight = URI.open("https://cf.geekdo-images.com/_Ppn5lssO5OaildSE-FgFA__original/img/kVpZ0Maa_LeQGWxOqsYKP3N4KUY=/0x0/filters:format(jpeg)/pic3727516.jpg")
boardgame = Boardgame.create(
  title: "Twilight Imperium",
  description: "Quatrième édition de Twilight Imperium, un jeu dans lequel les joueurs devront faire du troc, comploter
                et entrer en guerre les uns contre les autres pour remplir des objectifs.",
  play_time: 480,
  age: 14,
  rating: 8.6,
  min_player: 3,
  max_player: 6,
  category:"Exploration, Science Fiction, Economie, Politique"
)
boardgame.photo.attach(io: twilight, filename: "pic3727516.jpg", content_type: "image/png")
puts boardgame.title

pandemic = URI.open("https://cf.geekdo-images.com/-Qer2BBPG7qGGDu6KcVDIw__original/img/PlzAH7swN1nsFxOXbfUvE3TkE5w=/0x0/filters:format(png)/pic2452831.png")
boardgame = Boardgame.create(
  title: "Pandemic Legacy",
  description: "Pandemic Legacy - Saison 1 (boîte rouge ou bleue) est un jeu
                coopératif dans lequel les joueurs forment un groupe d'élite luttant contre la propagation de quatre maladies.",
  play_time: 60,
  age: 13,
  rating: 8.5,
  min_player: 2,
  max_player: 4,
  category:"Sciences, Contemporain"
)
boardgame.photo.attach(io: pandemic, filename: "pic2452831.png", content_type: "image/png")
puts boardgame.title

dune = URI.open("https://cf.geekdo-images.com/PhjygpWSo-0labGrPBMyyg__original/img/mZzaBAEEJpMlHWWmC0R6Su0OibQ=/0x0/filters:format(jpeg)/pic5666597.jpg")
boardgame = Boardgame.create(
  title: "Dune Imperium",
  description: "Adapté de l'univers de Frank Herbert, Dune : Imperium est un jeu de stratégie mêlant deckbuilding
                et placement d'ouvriers pour offrir une mécanique de jeu profondément thématique pour coller à ce
                monument de la Science-Fiction.",
  play_time: 120,
  age: 14,
  rating: 8.4,
  min_player: 1,
  max_player: 4,
  category:"Science Fiction"
)
boardgame.photo.attach(io: dune, filename: "pic5666597.jpg", content_type: "image/png")
puts boardgame.title

scythe = URI.open("https://cf.geekdo-images.com/7k_nOxpO9OGIjhLq2BUZdA__original/img/HlDb9F365w0tSP8uD1vf1pfniQE=/0x0/filters:format(jpeg)/pic3163924.jpg")
boardgame = Boardgame.create(
  title: "Scythe",
  description: "Dans Scythe, prenez le contrôle de l'Usine, un territoire encore meurtri par les combats de la
                Première Guerre Mondiale. Vivez une expérience de jeu complète et hautement stratégique et devenez
                le peuple le plus reconnu.",
  play_time: 115,
  age: 14,
  rating: 8.2,
  min_player: 1,
  max_player: 5,
  category:"Science Fiction"
)
boardgame.photo.attach(io: scythe, filename: "pic3163924.jpg", content_type: "image/png")
puts boardgame.title

nemesis = URI.open("https://cf.geekdo-images.com/tAqLpWxQ0Oo3GaPP3MER1g__original/img/sA6r1p6BO_Tgyc3-xgIESC9Y-vg=/0x0/filters:format(jpeg)/pic5073276.jpg")
boardgame = Boardgame.create(
  title: "Nemesis",
  description: "Nemesis est un jeu semi-coopératif où vous et vos camarades cherchez à survivre sur un vaisseau infesté
                d'organismes hostiles.",
  play_time: 180,
  age: 12,
  rating: 8.3,
  min_player: 1,
  max_player: 5,
  category:"Horreur, Science Fiction"
)
boardgame.photo.attach(io: nemesis, filename: "pic5073276.jpg", content_type: "image/png")
puts boardgame.title

esw = URI.open("https://cf.geekdo-images.com/Da8TXGBq3UjKINgTRIZY9A__original/img/P7TSglbGEFsDOzWKIo8iMLOzl3c=/0x0/filters:format(jpeg)/pic1170265.jpg")
boardgame = Boardgame.create(
  title: "Epic Spell Wars : Baston de sorciers",
  description: "L’ultime bataille entre les sorciers les plus vénères du royaume fait rage ! Vous êtes l’un d’entre eux,
               alors, essayez de ne pas tout faire foirer.",
  play_time: 60,
  age: 14,
  rating: 6.5,
  min_player: 2,
  max_player: 6,
  category:"Cartes, Programmation"
)
boardgame.photo.attach(io: esw, filename: "pic1170265.jpg", content_type: "image/png")
puts boardgame.title

wingspan = URI.open("https://cf.geekdo-images.com/yLZJCVLlIx4c7eJEWUNJ7w__original/img/cI782Zis9cT66j2MjSHKJGnFPNw=/0x0/filters:format(jpeg)/pic4458123.jpg")
boardgame = Boardgame.create(
  title: "Wingspan",
  description: "Wingspan est un jeu de collection dans lequel les joueurs incarnent des amoureux d'oiseaux, chercheurs,
                observateurs, ornithologues ou collectionneurs, ayant pour objectif d'aménager la plus belle des volières.",
  play_time: 70,
  age: 10,
  rating: 8.1,
  min_player: 1,
  max_player: 5,
  category:"Animaux, Nature"
)
boardgame.photo.attach(io: wingspan, filename: "pic4458123.jpg", content_type: "image/png")
puts boardgame.title

root = URI.open("https://cf.geekdo-images.com/JUAUWaVUzeBgzirhZNmHHw__original/img/E0s2LvtFA1L5YKk-_44D4u2VD2s=/0x0/filters:format(jpeg)/pic4254509.jpg")
boardgame = Boardgame.create(
  title: "Root",
  description: "Root est un jeu asymétrique d'aventure et de guerre dans lequel les joueurs se battent pour le contrôle
                d'une vaste région sauvage.",
  play_time: 90,
  age: 10,
  rating: 8.1,
  min_player: 2,
  max_player: 4,
  category:"Animaux, Fantastique"
)
boardgame.photo.attach(io: root, filename: "pic4254509.jpg", content_type: "image/png")
puts boardgame.title

bang = URI.open("https://cf.geekdo-images.com/_04xA-d-rfygm0c49HE4vA__original/img/el-4Ilu9DeYunRT3r4TVP8Vy3uk=/0x0/filters:format(jpeg)/pic1170986.jpg")
boardgame = Boardgame.create(
  title: "Bang !",
  description: "Avec le jeu Bang !, devenez Shérif, Hors-la-loi ou Renégat et triomphez de vos adversaires !
                Un jeu de cartes à l'ambiance survoltée dans l'univers du Far West !",
  play_time: 60,
  age: 8,
  rating: 6.5,
  min_player: 4,
  max_player: 7,
  category:"Western"
)
boardgame.photo.attach(io: bang, filename: "pic1170986.jpg", content_type: "image/png")
puts boardgame.title

puts "=========================================================================="
puts "Boardgames completed !"
puts "=========================================================================="

puts "=========================================================================="
puts "Creating players..."
puts "=========================================================================="

patrick = URI.open("https://static1.purebreak.com/articles/5/20/05/85/@/728213-patrick-l-etoile-de-mer-sera-la-star-du-diapo-2.jpg")
user = User.create(
  username: "Sarah",
  email: "patrick@gmail.com",
  password: "password",
)
user.avatar.attach(io: patrick, filename: "728213-patrick-l-etoile-de-mer-sera-la-star-du-diapo-2.jpg", content_type: "image/jpg")
puts user.username

sandy = URI.open("https://costumesheaven.b-cdn.net/wp-content/uploads/2022/02/sandycheeks_1.jpg")
user = User.create(
  username: "Marc",
  email: "sandy@gmail.com",
  password: "password",
)
user.avatar.attach(io: sandy, filename: "sandycheeks_1.jpg", content_type: "image/jpg")
puts user.username

carlo = URI.open("https://static.wikia.nocookie.net/bob-leponge/images/0/05/Squidward_stock_art.png/revision/latest?cb=20190801142211&path-prefix=fr")
user = User.create(
  username: "Carlo",
  email: "carlo@gmail.com",
  password: "password",
)
user.avatar.attach(io: carlo, filename: "carlo.jpg", content_type: "image/jpg")
puts user.username

krabs = URI.open("https://upload.wikimedia.org/wikipedia/en/thumb/f/f8/Mr._Krabs.svg/1200px-Mr._Krabs.svg.png")
user = User.create(
  username: "Krabs",
  email: "krabs@gmail.com",
  password: "password",
)
user.avatar.attach(io: krabs, filename: "1200px-Mr._Krabs.svg.png", content_type: "image/png")
puts user.username

plancton = URI.open("https://static.wikia.nocookie.net/villains-fr/images/6/6b/EvilPlankton24.png/revision/latest?cb=20200807094048&path-prefix=fr")
user = User.create(
  username: "Plancton",
  email: "plancton@gmail.com",
  password: "password",
)
user.avatar.attach(io: plancton, filename: "plancton.png", content_type: "image/png")
puts user.username

kenshiro = URI.open("https://static.wikia.nocookie.net/hokuto-no-ken-le-survivant-fr/images/c/cc/T%C3%A9l%C3%A9chargement_%2831%29.jpeg/revision/latest?cb=20200806023516&path-prefix=fr")
user = User.create(
  username: "Kenshiro",
  email: "kenshiro@gmail.com",
  password: "password",
)
user.avatar.attach(io: kenshiro, filename: "kenshiro.png", content_type: "image/png")
puts user.username

bob = URI.open("https://casoar.org/wp-content/uploads/2020/10/Bob-leponge.png")
user = User.create(
  username: "Elé",
  email: "bob@gmail.com",
  password: "password",
)
user.avatar.attach(io: bob, filename: "Bob-leponge.png", content_type: "image/png")
puts user.username

puts "=========================================================================="
puts "players completed !"
puts "=========================================================================="
