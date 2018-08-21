# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Mission.destroy_all
Application.destroy_all
Organization.destroy_all

puts "Creating default users..."

fatou = User.create!(
  email: "fatou.d@gmail.com",
  password: "azerty",
  first_name: "Fatou",
  last_name: "Diallo",
  phone_number: "0654567876",
  description: "J'ai 37 ans, trois enfants et je suis psychiatre au CHU de Nantes.
  Je suis passionnée par la Grèce antique et
  je souhaite donner quelques heures de mon temps pour donner des cours d'histoire-géo.",
  skills: "Diplomée du CHU de Nantes / Maîtrise de l'anglais, de l'espanol et de l'arabe.
  Je suis patiente et empathique.",
  experiences: "Membre d'une association pour faire avancer la science depuis 2011.",
  picture: File.open(Rails.root.join("db/fixtures/users/pierre.jpeg"))
)

binta = User.create!(
  email: "binta.diallo@gmail.com",
  password: "azerty",
  first_name: "Binta",
  last_name: "Diallo",
  phone_number: "0677779865",
  description: "Je suis très méticuleuse et organisée.
  Je viens de finir un master en Art Appliqué est
  c'est ma soeur Fatou qui m'a parlé de cette plateforme et c'est la 1ère fois
  que je participe à une action humanitaire. Jai envie d'animer un atelier dessin une fois par semaine.",
  skills: "Dessin, Peinture, Street Art, Logiciels de PAO.",
  experiences: "Baby-Sitter pendant 5 ans / prof d'anglais pour des collégiens.",
  picture: File.open(Rails.root.join("db/fixtures/users/pierre.jpeg"))
)

elena = User.create!(
  email: "elena.chavos@aol.com",
  password: "azerty",
  first_name: "Elena",
  last_name: "Chavos",
  phone_number: "0655323411",
  description: "J'ai 26 ans et je suis étudiante à la faculté de Droit de Nantes.
  Je viens de Colombie et je vis avec mon fiancé Thomas à Saint-Sébastien. Véhiculée, les déplacements
  à Nantes Centre ne sont pas un problème.
  Pour toutes questions relatives au juridique/droit, vous pouvez compter sur moi !",
  skills: "Spécialisée en Droit des Familles. Je parle anglais et espagnol.",
  experiences: "Stage de 6 mois au Barreau de Nantes.",
  picture: File.open(Rails.root.join("db/fixtures/users/pierre.jpeg"))
)

yulia = User.create!(
  email: "yulia_osipova@aol.com",
  password: "azerty",
  first_name: "Yulia",
  last_name: "Osipova",
  phone_number: "0627658398",
  description: "J'ai 31 ans, je suis russe et j'habite à Nantes depuis 2 ans
  Je suis Chef Cuisto à la Cigale et j'adore mon métier ! Je souhaite donner mon temps pour cuisiner pour les exilés.
  Mon patron est d'ailleurs d'accord pour faire des dons ponctuels.",
  skills: "Cuisine moléculaire/Cuisine Bistronomique",
  experiences: "Je me suis occupée d'enfants dans un orphelinat de ma ville natale
  et je gérais les repas pour 65 enfants.",
  picture: File.open(Rails.root.join("db/fixtures/users/pierre.jpeg"))
)

romain = User.create!(
  email: "romain.pazo@gmail.com",
  password: "azerty",
  first_name: "Romain",
  last_name: "Pazo",
  phone_number: "0675410100",
  description: "J'ai 50 ans et je suis professeur de mathématique au Lycée Saint Stanislas.
  Je souhaite donner des cours de mathématique.",
  skills: "Agrégé en mathématique",
  experiences: "Professeur de mathématique (hypokhâgne)",
  picture: File.open(Rails.root.join("db/fixtures/users/pierre.jpeg"))
)

enzo = User.create!(
  email: "enzo.mathe@gmail.com",
  password: "azerty",
  first_name: "Enzo",
  last_name: "Mathé",
  phone_number: "0628880008",
  description: "Je suis spécialisé en architecture réseau et je travaille au Ministère
  des Affaires étrangères. Je suis passionné de moto.
  et je pars tous les week-ends faire des ballades
  au bord de la mer. Je n'ai pas beaucoup de temps, mais une à deux fois
  par mois, je voudrais animer des ateliers Initiation à l'informatique.",
  skills: "Architecture Réseau / Machine Learning",
  experiences: "Web Ninja depuis l'âge de 8 ans.",
  picture: File.open(Rails.root.join("db/fixtures/users/pierre.jpeg"))
)

puts "Creating default organizations..."

kollectif_93 = Organization.create!(
  name: "Kollectif_93",
  description: "Le Kollectif_93 est une association à but non lucratif
  pour promouvoir le street-art à Nantes. Une de nos missions principale est de donner une chance
  à des élèves déscolarisés du quartier Malakoff en finançant 5 années d'études à l'école du Design de Nantes."
  Speed: faster than light
  Armaments: Superlaser
  Power: Able to destroy a ship, city or planet.",
  address: "79 rue Port Boyer, 44000, Nantes",
  price_per_day: "50000",
  number_of_seats: "1160305",
  photo: File.open(Rails.root.join("db/fixtures/spaceships/star-wars-etoile-noir.png")),
  user: julie

  t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.text "description"
    t.string "kind"
    t.integer "total_volunteers"
    t.integer "siren"
    t.string "category"
    t.string "website"
    t.string "facebook"
    t.string "linkedin"
    t.string "twitter"
    t.string "address"
    t.date "creation_date"
    t.string "logo"
    t.string "photo_1"
    t.string "photo_2"
    t.string "photo_3"
)

le_cercle_wagnérien = Spaceship.create!(
  name: "Le Cercle Wagnérien",
  description: "Length: 34.75 meters - Height:7.8 meters - Maximum speed: 1,200 km/h.
  Its aged appearance belied numerous advanced modifications to boost the ship's speed, weapons, and shield, including a hyperdrive engine among
  the fastest in the entire galaxy, enabling it to outrun Imperial Star Destroyers.",
  address: "4 place Marc Elder, 44000, Nantes",
  price_per_day: "15000",
  number_of_seats: "12",
  photo: File.open(Rails.root.join("db/fixtures/spaceships/millenium-falcon.jpg")),
  user: pierre
)

pmgo = Spaceship.create!(
  name: "Association des professeurs de mathématique du Grand Ouest (PMGO)",
  description: "Length: 642 meters, Height: 195 meters
  Speed: 1800 km/h.
  12 Phaser arrays, 2 Torpedo launchers, 250 Photon, Gravimetric, or Tricobalt torpedoes,
  carried Antimatter mines",
  address: "2 Rue Charles Viaud, 44000, Nantes",
  price_per_day: "95000",
  number_of_seats: "350",
  photo: File.open(Rails.root.join("db/fixtures/spaceships/ussenterprise.jpg")),
  user: fred
)


puts "Creating reservations..."

resa1 = Reservation.create!(
  price: 45000,
  status: "pending",
  start_date: "3018-09-25",
  end_date: "3018-09-28",
  user: julie,
  spaceship: spaceship_millenium
)

resa2 = Reservation.create!(
  price: 75000,
  status: "pending",
  start_date: "3018-09-23",
  end_date: "3018-09-28",
  user: thibault,
  spaceship: spaceship_xwing
)

resa3 = Reservation.create!(
  price: 144000,
  status: "accepted",
  start_date: "3018-10-4",
  end_date: "3018-10-24",
  user: julie,
  spaceship: spaceship_xwing
)

resa4 = Reservation.create!(
  price: 50000,
  status: "refused",
  start_date: "3019-12-24",
  end_date: "3019-12-25",
  user: pierre,
  spaceship: spaceship_deathstar
)

resa5 = Reservation.create!(
  price: 285000,
  status: "accepted",
  start_date: "3018-11-4",
  end_date: "3018-11-7",
  user: pierre,
  spaceship: spaceship_ussenterprise
)

puts "Finished!"
