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

salma = User.create!(
  email: "pagehey.tissehaut@aol.com",
  first_name: "Pierre",
  last_name: "Tissot",
  phone_number: "pagehey",
  description: "azerty",
  skills: "Can't you find Pierre coding at Google's Head Office? Oh! Then it means he is probably
  busy in Aix-en-Provence, organising snail racing.",
  skills:
  photo: File.open(Rails.root.join("db/fixtures/users/pierre.jpeg"))
)

fatou = User.create!(
  email: "tib.design@aol.com",
  first_name: "Thibaut",
  last_name: "Frontman",
  username: "La gachette",
  password: "azerty",
  biography: "Thibaut used to work for 10 yrs in the blood chemistry but he is now the owner of the 'Vampire State Building'.",
  photo: File.open(Rails.root.join("db/fixtures/users/thibault.jpeg"))
)

fred = User.create!(
  email: "heydarkv@yahoo.fr",
  first_name: "Fred",
  last_name: "Kv",
  username: "heykv",
  password: "azerty",
  biography:"Fred wears several hats. He is a singer during the day and at night he likes going outside for drinks, dressed like a robot.",
  photo: File.open(Rails.root.join("db/fixtures/users/fred.jpeg"))
)

julie = User.create!(
  email: "juliespoonie@gmail.com",
  first_name: "Julie",
  last_name: "Yende",
  username: "JulieSpoonie",
  password: "azerty",
  biography: "Julie Spoonie is married to George Clooney.
  She likes building sand castles and she shares her bedroom with a 85 kgs s Rottweiller.",
  photo: File.open(Rails.root.join("db/fixtures/users/julie.jpeg"))
)

puts "Creating default spaceships..."

spaceship_millenium = Spaceship.create!(
  name: "Millennium-Falcon",
  description: "Length: 34.75 meters - Height:7.8 meters - Maximum speed: 1,200 km/h.
  Its aged appearance belied numerous advanced modifications to boost the ship's speed, weapons, and shield, including a hyperdrive engine among
  the fastest in the entire galaxy, enabling it to outrun Imperial Star Destroyers.",
  address: "4 place Marc Elder, 44000, Nantes",
  price_per_day: "15000",
  number_of_seats: "12",
  photo: File.open(Rails.root.join("db/fixtures/spaceships/millenium-falcon.jpg")),
  user: pierre
)

spaceship_ussenterprise = Spaceship.create!(
  name: "Ussenterprise",
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

spaceship_deathstar = Spaceship.create!(
  name: "Deathstar",
  description: "Width: 160 km, Height: 120 km in radius
  Speed: faster than light
  Armaments: Superlaser
  Power: Able to destroy a ship, city or planet.",
  address: "79 rue Port Boyer, 44000, Nantes",
  price_per_day: "50000",
  number_of_seats: "1160305",
  photo: File.open(Rails.root.join("db/fixtures/spaceships/star-wars-etoile-noir.png")),
  user: julie
)

spaceship_xwing = Spaceship.create!(
  name: "Xwing",
  description: "Length: 12.5 meters, Height: 5 meters
  Speed: 1,100 km/h
  Engineers strove to build a well-rounded hyper-drive equipped snubfighter with no exploitable weakness.",
  address: "24 boulevard Stalingrad, 44000, Nantes",
  price_per_day: "6000",
  number_of_seats: "1",
  photo: File.open(Rails.root.join("db/fixtures/spaceships/xwing.jpg")),
  user: pierre
)

spaceship_planetexpress = Spaceship.create!(
  name: "Planet-express",
  description: "Length: 960 meters, Height: 240 meters
  Armaments: Laser cannons Torpedoes
  Power : Dark matter reactor and whale Oil",
  address: "34 quai Magellan, 44000, Nantes",
  price_per_day: "600",
  number_of_seats: "8",
  photo: File.open(Rails.root.join("db/fixtures/spaceships/planet-express.jpg")),
  user: thibault
)

spaceship_narada = Spaceship.create!(
  name: "Narada",
  description: "Length: 8000 meters, Height: 8,9 meters
  Speed: 1800 km/h
  Despite being only a mining vessel in its own time, the Narada
  possessed weaponry far more advanced than that of any ships
  it encountered in the 23rd century.
  The primary weapons seemed to be highly
  destructive missiles, each of which could break into several component projectiles.",
  address: "5 Rue Rollin Chantenay, 44100, Nantes",
  price_per_day: "300",
  number_of_seats: "5",
  photo: File.open(Rails.root.join("db/fixtures/spaceships/narada.jpg")),
  user: julie
)

spaceship_tardis = Spaceship.create!(
  name: "Tardis",
  description: "Best time machine and spacecraft you can find in the galaxy.
  Faster-than-light travel.
  The TARDIS is dimensionally transcendental, meaning it’s bigger on the inside than the outside.
  The TARDIS interior has an unknown number of rooms and corridors,
  and the dimensions of the interior have not been specified.",
  address: "Rue du Maréchal de Lattre de Tassigny, 44000, Nantes ",
  price_per_day: "4000",
  number_of_seats: "100 000 000",
  photo: File.open(Rails.root.join("db/fixtures/spaceships/tardis.jpg")),
  user: julie
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
