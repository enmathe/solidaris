# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Application.destroy_all
Mission.destroy_all
Organization.destroy_all
User.destroy_all

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
  skills: "Diplomée du CHU de Nantes / Maîtrise de l'anglais, de l'espagnol et de l'arabe.
  Je suis patiente et empathique.",
  experiences: "Membre d'une association pour faire avancer la science depuis 2011.",
  picture: File.open(Rails.root.join("db/fixtures/users/fatou.jpg"))
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
  picture: File.open(Rails.root.join("db/fixtures/users/binta.jpg"))
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
  picture: File.open(Rails.root.join("db/fixtures/users/elena.jpg"))
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
  picture: File.open(Rails.root.join("db/fixtures/users/yulia.jpg"))
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
  picture: File.open(Rails.root.join("db/fixtures/users/romain.jpg"))
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
  par mois, je voudrais animer des ateliers 'Initiation à l'informatique'.",
  skills: "Architecture Réseau / Machine Learning",
  experiences: "Web Ninja depuis l'âge de 8 ans.",
  picture: File.open(Rails.root.join("db/fixtures/users/enzo.jpg"))

cnrw = Organization.create!(
  name: "CNRW - Cercle National Richard Wagner",
  description: "Le Cercle Richard Wagner
  rassemble aussi bien des passionnés convaincus
  que des curieux en quête de découverte
  de l’œuvre de Richard Wagner. Nous nous proposons
  de former les exilés au chant lyrique. Nous vous laisserons le soin de fixer
  les horaires car nous sommes relativement flexibles.",
  email: "cnrw@fr",
  kind: "Association",
  total_volunteers: 2,
  siren: 117 432 186,
  category: "Arts et Culture",
  website: "www.cnrw.fr",
  facebook: "https://www.facebook.com/julie.yende",
  linkedin: "https://www.linkedin.com/in/julieyendebusinessdeveloper/",
  twitter: "https://twitter.com/YendeJulie",
  address: "2 bd de la Marine Marchande, 44300 Nantes",
  creation_year: "1978",
  logo: File.open(Rails.root.join("db/fixtures/organization/cnrw/logo.jpg")),
  photo_1: File.open(Rails.root.join("db/fixtures/organization/cnrw/pic_1.jpg")),
  photo_2: File.open(Rails.root.join("db/fixtures/organization/cnrw/pic_2.jpg")),
  photo_3: File.open(Rails.root.join("db/fixtures/organization/cnrw/pic_3.jpg")),
)
"02 40 40 45 27"

kollectif_93 = Organization.create!(
  name: "Kollectif_93",
  description: "Le Kollectif_93 est une équipe de passionnés d’art urbain.
  Nous prenons le parti d’accompagner de jeunes artistes français et internationaux du milieu graffiti
  et street art. Nous souhaitons animer des ateliers 'street-art' pour les exilés de Nantes."
  email: "kollectif_93@fr",
  kind: "Collectif",
  total_volunteers: 30,
  siren: 117 535 186,
  category: "Arts et Culture",
  website: "www.kollectif-93.com",
  facebook: "https://www.facebook.com/julie.yende",
  linkedin: "https://www.linkedin.com/in/julieyendebusinessdeveloper/",
  twitter: "https://twitter.com/YendeJulie",
  address: "5 rue du tour du monde, 44300 Nantes",
  creation_year: 2007,
  logo: File.open(Rails.root.join("db/fixtures/organization/kollectif/logo.jpg")),
  photo_1: File.open(Rails.root.join("db/fixtures/organization/kollectif/pic_1.jpg")),
  photo_2: File.open(Rails.root.join("db/fixtures/organization/kollectif/pic_2.jpg")),
  photo_3: File.open(Rails.root.join("db/fixtures/organization/kollectif/pic_3.jpg")),
)
"06 75 29 00 77"

bns = Organization.create!(
  name: "Boxe Nantaise Savate",
  description: "C'est Jules Germany, 2 fois champion de France de boxe française, qui a fondé cette structure originale.
  Les valeurs qu'il souhaite inculquer à ses champions en herbe sont le respect, l'humilité, le courage
  et la détermination.
  Ce n'est pas un club de boxe comme les autres : On y apprend bien sûr le combat
  mais on peut aussi profiter de soutien scolaire et
  d'accompagnement professionnel avant l'entrainement ! Nous souhaitons donner 2 entraînements
  de 2h par semaine et nous fournissons les tickets de tram pour se rendre à la salle de sport. Une paire de basket
  est demandée mais nous mettons à disposition gants, protège-dent et protège-tibia."
  email: "bns@gmail.fr",
  kind: "Collectif",
  total_volunteers: 4,
  siren: 117 552 432,
  category: "Sport & Loisirs",
  website: "www.bns.fr",
  facebook: "https://www.facebook.com/julie.yende",
  linkedin: "https://www.linkedin.com/in/julieyendebusinessdeveloper/",
  twitter: "https://twitter.com/YendeJulie",
  address: "2 rue de la Poste, 44000 Nantes",
  creation_year: 1998,
  logo: File.open(Rails.root.join("db/fixtures/organization/logo.jpg")),
  photo_1: File.open(Rails.root.join("db/fixtures/organization/kollectif/pic_1.jpg")),
  photo_2: File.open(Rails.root.join("db/fixtures/organization/kollectif/pic_2.jpg")),
  photo_3: File.open(Rails.root.join("db/fixtures/organization/kollectif/pic_3.jpg")),
)
"06 55 88 23 00"

réseau_entreprendre = Organization.create!(
  name: "Réseau Entreprendre",
  description: "L’histoire de Réseau Entreprendre débute en 1986 lorsqu’André Mulliez, industriel du Nord
  de la France confronté à des licenciements massifs dans son entreprise Phildar,
  lance cette maxime visionnaire et pleine de bon sens : « Pour créer des emplois, créons des employeurs ».
  Son idée : faire réussir des entrepreneurs à potentiel de création d’emplois en leur transmettant le savoir-être et l’expérience de chefs d’entreprise en activité,
  au travers d’échanges de pairs à pairs. Réseau Entreprendre ce sont des milliers de success stories
  (Michel & Augustin, Sushi Daily, My Little Paris…).
  Nous nous proposons d'aller à la rencontre des exilés pour les accompagner sur leur propre projet et les faire
  pitcher. 3 sessions de 1h sont prévues."
  email: "reseau_entreprendre@gmail.fr",
  kind: "Association",
  total_volunteers: 10,
  siren: 117 534 210,
  category: "Economie, Emploi, Formation, Insertion",
  website: "www.reseau-entreprendre.org/fr/accueil/",
  facebook: "https://www.facebook.com/julie.yende",
  linkedin: "https://www.linkedin.com/in/julieyendebusinessdeveloper/",
  twitter: "https://twitter.com/YendeJulie",
  address: "54 rue du Costa Rica, 44000 Nantes",
  creation_year: 1986,
  logo: File.open(Rails.root.join("db/fixtures/organization/reseau_entreprendre/logo.jpg")),
  photo_1: File.open(Rails.root.join("db/fixtures/organization/reseau_entreprendre/pic_1.jpg")),
  photo_2: File.open(Rails.root.join("db/fixtures/organization/reseau_entreprendre/pic_2.jpg")),
  photo_3: File.open(Rails.root.join("db/fixtures/organization/reseau_entreprendre/pic_3.jpg")),
)
"06 26 33 34 72"

lire_et_faire_lire_ = Organization.create!(
  name: "Lire et Faire Lire",
  description: "
  Lire et faire lire est un programme national d’ouverture à la lecture et de solidarité intergénérationnelle.
  Des bénévoles de plus de 50 ans offrent une partie de leur temps libre aux mineurs pour
  stimuler le goût de la lecture et de la littérature.
  Des séances de lecture sont organisées en petit groupe, une ou plusieurs fois par semaine, durant toute
  l’année, dans une démarche axée sur le plaisir de lire et la rencontre entre les générations."
  email: "lireetfairelire@gmail.fr",
  kind: "Association",
  total_volunteers: 6,
  siren: 117 398 540,
  category: "Arts et Culture",
  website: "www.lireetfairelire.org/",
  facebook: "https://www.facebook.com/julie.yende",
  linkedin: "https://www.linkedin.com/in/julieyendebusinessdeveloper/",
  twitter: "https://twitter.com/YendeJulie",
  address: "28 Boulevard Allende, 44000 Nantes",
  creation_year: 1991,
  logo: File.open(Rails.root.join("db/fixtures/organization/lire_et_faire_lire/logo.jpg")),
  photo_1: File.open(Rails.root.join("db/fixtures/organization/lire_et_faire_lire/pic_1.jpg")),
  photo_2: File.open(Rails.root.join("db/fixtures/organization/lire_et_faire_lire/pic_2.jpg")),
  photo_3: File.open(Rails.root.join("db/fixtures/organization/lire_et_faire_lire/pic_3.jpg")),
)
"02 40 67 11 11"

dessins_sans_papiers = Organization.create!(
  name: "Dessins Sans Papiers",
  description: "DESSINS SANS PAPIERS est un collectif qui organise des ateliers dans des camps de réfugiés
  et des centres d’hébergement depuis 2016. DSP publie aussi des livres de dessins
  pour passer les frontières et partager des histoires que tout le monde peut comprendre.
  Ceux que nous avons rencontrés viennent du Soudan, du Tchad, du Mali, de Guinée Conakry,
  d’Érythrée, d’Éthiopie,
  du Tibet, d’Égypte, d’Iran, d’Irak, de Syrie, du Pakistan …
  ou d’Afghanistan. Leurs dessins montrent des milices qui tirent sur des hommes, des oiseaux fatigués,
  des messages d’amitié accrochés
  à la Tour Eiffel. Ils nous disent ce qu’ils ont fui et pourquoi ils ont besoin de notre hospitalité."
  email: "dessinssanspapiers@gmail.fr",
  kind: "Collectif",
  total_volunteers: 6
  siren:
  category: "Arts et Culture",
  website: "www.dessinssanspapiers.com",
  facebook: "https://www.facebook.com/julie.yende",
  linkedin: "https://www.linkedin.com/in/julieyendebusinessdeveloper/",
  twitter: "https://twitter.com/YendeJulie",
  address: "2 Cours des Paludiers, 44100 Nantes",
  creation_year: 2005,
  logo: File.open(Rails.root.join("db/fixtures/organization/dessins_sans_papiers/logo.jpg")),
  photo_1: File.open(Rails.root.join("db/fixtures/organization/dessins_sans_papiers/pic_1.jpg")),
  photo_2: File.open(Rails.root.join("db/fixtures/organization/dessins_sans_papiers/pic_2.jpg")),
  photo_3: File.open(Rails.root.join("db/fixtures/organization/dessins_sans_papiers/pic_3.jpg")),
)
"06 20 14 68 57"


