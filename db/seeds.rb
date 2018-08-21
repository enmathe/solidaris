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
  par mois, je voudrais animer des ateliers Initiation à l'informatique.",
  skills: "Architecture Réseau / Machine Learning",
  experiences: "Web Ninja depuis l'âge de 8 ans.",
  picture: File.open(Rails.root.join("db/fixtures/users/enzo.jpg"))
  
anade = Organization.create!(
  name: "ANADE - Association Nantaise d'Alphabétisation Des Etrangers",
  description: "Les cours du soir dispensés s'adressent aux adultes de toute âge et de toutes nationalités désireux d'apprendre ou de se perfectionner dans la pratique du français",
  email: "anade@sfr.fr",
  kind: "Education",
  total_volunteers:
  siren:
  category: "Alphabétisation",
  website: "https://anadeasso.wordpress.com",
  facebook: ,
  linkedin: ,
  twitter: ,
  address: "42 rue des Hauts Pavés 44000 NANTES",
  creation_date: 1978,
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"07 61 47 72 65"
association aurore = Organization.create!(
  name: "Association Aurore",
  description: "Créée en 1871, l’association Aurore héberge, soigne et accompagne plus de 37 000 personnes en situation de précarité ou d’exclusion vers une insertion sociale et professionnelle.
  Reconnue d’utilité publique depuis 1875, Aurore s’appuie sur son expérience pour proposer et expérimenter des formes innovantes de prises en charge, qui s’adaptent à l’évolution des phénomènes de précarité et d’exclusion.",
  email: "f.beliarde@aurore.asso.fr",
  kind: "Logement, Aide médical",
  total_volunteers: 2996,
  siren: 775 684 970,
  category:
  website: "https://www.aurore.asso.fr",
  facebook: "www.facebook.com/associationaurore",
  linkedin: "https://fr.linkedin.com/company/association-aurore",
  twitter: "@AssoAurore",
  address: "29, allée de l'Indre, 44000 Nantes",
  creation_date: 1871,
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"02 51 82 60 99"
 cfda = Organization.create!(
  name: "CFDA Coordination Française pour le Droit d'Asile",
  description: "Née au début de l'année 2000 de la fusion de la Commission de
  Sauvegarde du droit d'Asile, de la Coordination Réfugiés et du Comité de liaison,
  qu'elle remplace, la CFDA rassemble une vingtaine d'organisations qui, en France,
  sont engagées dans la défense et la promotion du droit d'asile, en référence
  à la Déclaration Universelle des Droits de l'Homme et à la Convention de Genève
  sur les réfugiés ainsi que, notamment, à la Convention Internationale sur les
  Droits de l'Enfant et à la Convention Européenne de Sauvegarde des Droits de
  l'Homme et des Libertés Fondamentales.
  Dans ce cadre, la CFDA intervient dans le débat public sur les questions relatives
  à l'asile, en France et en Europe, et fait connaître ses positions et le fruit de
  es travaux auprès des administrations chargées de l'accueil et de la protection
  des demandeurs d'asile et des réfugiés. En 2001, la CFDA s'est dotée d'une charte
  t a adopté une plateforme de propositions : 10 conditions pour un réel droit
  d'asile en France.
   Depuis cette date, le droit d’asile en France a été profondément remanié, tant
  au niveau des procédures que des conditions d’accueil. Six ans après leur
  déclaration, les associations de la CFDA affirment que les mesures de contrôle
  des flux migratoires et le climat de suspicion entretenu à l’encontre des
  demandeurs d’asile sont les causes principales tant de la baisse du nombre de
  demandeurs d’asile et de réfugiés dans les pays industrialisés que de
  l’augmentation du nombre de ces demandeurs dans des pays de transit, notamment
  en Afrique du Nord, et de personnes déplacées dans leurs propres pays.
   Réaffirmant leur attachement au droit d'asile comme droit fondamental et à la
  Convention de Genève comme socle du droit pour le statut des réfugiés, les
  associations de la CFDA ont actualisé leur plateforme le 19 juin 2007 et
  présentent 10 conditions minimales pour que l'asile soit un droit réel.
  ",
  email: "cfda44@numericable.fr",
  kind:
  total_volunteers:
  siren:
  category:
  website: "http://cfda.rezo.net",
  facebook:
  linkedin:
  twitter:
  address:
  creation_date: 2000,
  logo:
  photo_1:
  photo_2:
  photo_3:
)
 croix rouge = Organization.create!(
  name: "Croix Rouge",
  description: "Dans la tradition du Mouvement Croix-Rouge, la Croix-Rouge
  française est d’abord une association de bénévoles. Elle est aussi devenue
  une entreprise non profit de services dans les secteurs humanitaire, sanitaire,
  ocial, médicosocial et de la formation. Pour mener à bien ses missions,
  cette association-entreprise à but non lucratif, compte sur son réseau de
  bénévoles et de salariés, qui agissent chaque jour selon un même principe
  inaltérable de solidarité, en privilégiant les actions de proximité qui
  apportent des réponses concrètes et durables.",
  email: "ul.nantes@croix-rouge.fr",
  kind:
  total_volunteers: 58000,
  siren: 775 672 272,
  category:
  website: "https://www.croix-rouge.fr",
  facebook: "https://fr-fr.facebook.com/fr.CroixRouge",
  linkedin: "https://fr.linkedin.com/company/croix-rouge-fran-aise",
  twitter: "https://twitter.com/croixrouge",
  address: "10, rue d'Athènes, 44300 Nantes",
  creation_date: "1859",
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"02 40 74 66 82"
diaconat = Organization.create!(
  name: "Diaconat Protestant",
  description: "> Des chauffeurs / interprète de langue russe
> Du matériel pour remplacer un ordinateur portable",
  email: "diaconat.nantes@gmail.com",
  kind:
  total_volunteers: 28000,
  siren:
  category:
  website:
  facebook: "https://www.facebook.com/FEPasso/",
  linkedin:
  twitter: "https://twitter.com/FeProtest",
  address: "15bis place Edouard Normand, 44000 Nantes",
  creation_date: 1984,
  logo:
  photo_1:
  photo_2:
  photo_3:
)
 emmaus = Organization.create!(
  name: "Emmaüs",
  description:
  email: "contact@emmaus44.fr",
  kind:
  total_volunteers:
  siren:
  category:
  website:
  facebook:
  linkedin:
  twitter:
  address: "La Guilloterie Rue d'Emmaüs 44340 Bouguenais",
  creation_date:
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"02 40 75 63 36"
FBNA = Organization.create!(
  name: "France Bénévolat Nantes Atlantique",
  description:
  email:
  kind:
  total_volunteers:
  siren:
  category:
  website:
  facebook:
  linkedin:
  twitter:
  address: "9 Place Mangin 44200 Nantes",
  creation_date:
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"02 40 35 12 17"
gasprom = Organization.create!(
  name: "Gasprom",
  description:
  email: "gasprom@nantes.fr",
  kind:
  total_volunteers:
  siren:
  category:
  website:
  facebook:
  linkedin:
  twitter:
  address: "24 rue Fouré 44000 Nantes",
  creation_date:
  logo:
  photo_1:
  photo_2:
  photo_3:
)
 gref = Organization.create!(
  name: "GREF",
  description:
  email: "grefnantesfle@gmail.com",
  kind:
  total_volunteers:
  siren:
  category:
  website:
  facebook:
  linkedin:
  twitter:
  address:
  creation_date:
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"06 88 21 81 65 - 02 40 73 94 00"
acceuil = Organization.create!(
  name: "L'Acceuil d'abord",
  description: "> Des logements mis à disposition gratuitement dans l’agglomération nantaise, du gros matériel ménager (frigo, machines à laver le linge…)
> Des personnes pour accompagner les familles hébergées (compétences sociales, compétences linguistiques appréciées)
> Des financements pour les fluides, et tous les frais afférents aux logements",
  email: "accueil.dabord@gmail.com",
  kind:
  total_volunteers:
  siren:
  category:
  website:
  facebook:
  linkedin:
  twitter:
  address: "7 chemin de la Censive du Tertre 44300 Nantes",
  creation_date:
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"07 57 51 21 87"
pastorale = Organization.create!(
  name: "La Pastorale des Migrants",
  description:
  email: "pastorale.migrants@nantes.cef.fr",
  kind:
  total_volunteers:
  siren:
  category:
  website:
  facebook:
  linkedin:
  twitter:
  address: "43 Rue Gaston Turpin 44000 Nantes",
  creation_date:
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"02 40 74 64 17 - 06 21 13 33 89"
goout_des_autres = Organization.create!(
  name: "Le Goût des Autres",
  description:
  email: "legoutdesautres@ml.free.fr",
  kind:
  total_volunteers:
  siren:
  category:
  website:
  facebook:
  linkedin:
  twitter:
  address: "23, rue Henri Brunelière 44000 Nantes",
  creation_date:
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"06 08 16 52 61"
ligue_droits_de_lhomme = Organization.create!(
  name: "Ligue des Droits de l'Homme",
  description:
  email: "ldh.nantes@orange.fr",
  kind:
  total_volunteers:
  siren:
  category:
  website:
  facebook:
  linkedin:
  twitter:
  address: "4 Place de la Manu 44000 Nantes",
  creation_date:
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"07 86 51 74 99"
saint_jean = Organization.create!(
  name: "Logis St Jean",
  description:
  email: "logissaintjean@gmail.com",
  kind:
  total_volunteers:
  siren:
  category:
  website:
  facebook:
  linkedin:
  twitter:
  address: "11 Rue du Chapeau Rouge 44000 Nantes",
  creation_date:
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"02 49 44 36 91"
mrap = Organization.create!(
  name: "MRAP"
  description: "Mouvement contre le racisme et pour l'amitié entre les peuples",
  email: "mrapnantes@hotmail.com",
  kind:
  total_volunteers:
  siren:
  category:
  website:
  facebook:
  linkedin:
  twitter:
  address: "11 rue de Prinquiau 44100 Nantes",
  creation_date:
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"02 40 58 08 09"
medecins_du_monde = Organization.create!(
  name: "Médecins du Monde",
  description: "> Des bénévoles anglophones ou roumanophones qui s’impliquent dans les actions et adhèrent aux valeurs de Médecins du Monde (empathie, non jugement, bienveillance)",
  email: "pays-de-la-loire@medecinsdumonde.net",
  kind:
  total_volunteers:
  siren:
  category:
  website:
  facebook:
  linkedin:
  twitter:
  address: "33 Rue Fouré 44000 Nantes",
  creation_date:
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"02 40 47 36 99"
asamla = Organization.create!(
  name: "ASAMLA - Santé Migrants de Loire-Atlantique"
  description:
  email: "hdivet@cg44.fr",
  kind:
  total_volunteers:
  siren:
  category:
  website:
  facebook:
  linkedin:
  twitter:
  address: "49-51 Chaussée de la Madeleine 44000 Nantes",
  creation_date:
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"02 40 48 51 99"
secours_catholique = Organization.create!(
  name: "Secours Catholique",
  description:
  email: "loireatlantique@secours-catholique.org",
  kind:
  total_volunteers: 340
  siren:
  category:
  website:
  facebook:
  linkedin:
  twitter:
  address: "1 Rue Lorette de la Refoulais 44000 Nantes",
  creation_date:
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"02 40 29 04 26"
secours_pop = Organization.create!(
  name:
  description: "> Des chauffeurs-livreurs pour les denrées alimentaires",
  email: "contact@spf44.org",
  kind:
  total_volunteers: 333
  siren:
  category:
  website: "https://www.secourspopulaire.fr/"
  facebook:
  linkedin:
  twitter:
  address: "163, rue Paul Bellamy 44000 Nantes",
  creation_date:
  logo: "https://pbs.twimg.com/profile_images/948233438129213440/EcYNv5jR_400x400.jpg"
  photo_1:
  photo_2:
  photo_3:
)
"02 40 74 14 14 - 02 40 74 48 41"
fraternité = Organization.create!(
  name: "Amnesty International",
  description:
  email: "enzo@amnesty-international.org",
  kind:
  total_volunteers: 35000
  siren: 552100554
  category:
  website:
  facebook:
  linkedin:
  twitter:
  address: "3 Rue Amiral Du Chaffault 44100 Nantes",
  creation_date:
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"02 40 69 37 63"
resf = Organization.create!(
  name: "RESF - Collectif Enfants Etrangers",
  description:"Le Réseau éducation sans frontières, ou RESF, est un réseau composé de collectifs,
  de mouvements associatifs, de mouvements syndicaux,
  de soutiens politiques et de personnes issues de la société civile militant contre l'éloignement d'enfants étrangers scolarisés en France,
  causé par l'éloignement de leurs parents étrangers en situation irrégulière. Le 26 juin 2004 s'est tenue, à la Bourse du travail de Paris,
  une réunion rassemblant des enseignants et du personnel de l'Éducation nationale, des parents d'élèves, des éducateurs, des collectifs,
  des syndicats et des associations ayant une préoccupation commune : la situation des élèves majeurs étrangers en situation irrégulière
  et des familles en situation irrégulière ayant des enfants mineurs scolarisés (de la maternelle à l'université). Ils ont décidé ce jour-là
  de créer un réseau de soutien à ces enfants et à ces jeunes majeurs, le Réseau Éducation sans frontières (RESF).
  Son développement est difficilement chiffrable : tous ceux qui s'activent en faveur des jeunes et des familles étrangères en situation irrégulière peuvent se réclamer du Réseau.
  Sa forme d'organisation est originale, sans direction, avec des décisions prises au consensus.
  Ses moyens d'information et d'expression font un grand usage d'Internet : nombreuses listes de diffusion courriels[réf. nécessaire], site web, réunions publiques mais aussi une émission de radio sur Fréquence Paris Plurielle."
  email: "ceecs44@gmail.com",
  kind: "association"
  total_volunteers: 342
  siren: 552100554
  category:
  website: "http://www.educationsansfrontieres.org/"
  facebook: "https://www.facebook.com/RESF.INFO/"
  linkedin:
  twitter:
  address: "6 place de la Manufacture 44000 Nantes",
  creation_date: 2008
  logo:"https://www.google.fr/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwjbsM2ZpP7cAhXFyYUKHX-_DucQjRx6BAgBEAU&url=https%3A%2F%2Fopenagenda.com%2Fevents%2Freseau-education-sans-frontieres-resf%3Flang%3Dit&psig=AOvVaw1jxbephCm89upJwng7Xox4&ust=1534945628478362"
  photo_1:
  photo_2:
  photo_3:
)
