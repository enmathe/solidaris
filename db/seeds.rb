# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

anade = Organization.create!(
  name: "ANADE - Association Nantaise d'Alphabétisation Des Etrangers",
  description: "Les cours du soir dispensés s'adressent aux adultes de toute âge et de toutes nationalités désireux d'apprendre ou de se perfectionner dans la pratique du français",
  email: "anade@sfr.fr",
  kind: "Education",
  total_volunteers:
  siren: 756 867 453,
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
  siren: 787 756 568,
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

croix_rouge = Organization.create!(
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
  total_volunteers: 300,
  siren: 779 469 691,
  category:
  website: "http://www.fep.asso.fr/membre/le-diaconat-protestant-de-nantes/",
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
  description: "La Communauté Emmaüs 44 de Nantes est un lieu d’accueil, de vie,
  de travail et de solidarité pour les personnes en situation d’exclusion sociale.
  le est située à Bouguenais, au sud de Nantes. Créées sous l’impulsion de groupes
  de bénévoles, là où la misère criait, les communautés, aujourd’hui au nombre
  de 115, demeurent le reflet de cette indignation, de cette volonté de lutter
  contre l’injustice sociale."
  email: "contact@emmaus44.fr",
  kind:
  total_volunteers: 10000,
  siren: 776 756 780,
  category:
  website: "http://www.emmaus44.fr/nantes/la-communaute/",
  facebook: "https://fr-fr.facebook.com/emmausfrance/",
  linkedin: "https://fr.linkedin.com/company/emmaus",
  twitter: "https://twitter.com/croixrouge",
  address: "La Guilloterie Rue d'Emmaüs 44340 Bouguenais",
  creation_date: 1950,
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"02 40 75 63 36"
fbna = Organization.create!(
  name: "FBNA - France Bénévolat Nantes Atlantique",
  description: "Association ressource, France Bénévolat Nantes Atlantique
  participe au développement de la vie associative et de l'engagement bénévole
  pour une citoyenneté active.
  ORIENTE et MET EN RELATION des associations et des bénévoles
  ACCOMPAGNE les associations dans la recherche et l'animation de leurs bénévoles
  VALORISE l'engagement bénévole et les ressources humaines bénévoles",
  email: "francebenevolat@yahoo.fr"
  kind:
  total_volunteers: 1250,
  siren: 767 343 567,
  category:
  website: "http://nantes.francebenevolat.org/",
  facebook: "https://www.facebook.com/France-B%C3%A9n%C3%A9volat-304694849663/",
  linkedin:
  twitter: "https://twitter.com/francebenevolat",
  address: "9 Place Mangin 44200 Nantes",
  creation_date: 1965,
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"02 40 35 12 17"
gasprom = Organization.create!(
  name: "Gasprom",
  description: "epuis 1970 l'association accueille et aide les travailleurs
  immigrés. L'association se bat : contre le racisme et les discriminations,
  qu'elles soient sociales, raciales ou sexistes. Pour la liberté de circulation
  et d'installation des personnes et des idées. Pour l'égalité des droits dans
  une société interculturelle. Pour l'élargissement de la citoyenneté à toutes
  et à tous, indépendamment de la nationalité de chacun(e)."
  email: "gasprom@nantes.fr",
  kind:
  total_volunteers:
  siren: 773 564 344,
  category:
  website:
  facebook:
  linkedin:
  twitter:
  address: "24 rue Fouré 44000 Nantes",
  creation_date: 1970,
  logo:
  photo_1:
  photo_2:
  photo_3:
)

gref = Organization.create!(
  name: "GREF - Groupement des Educateurs sans Frontières",
  description: "NOS VALEURS
  Engagement bénévole de professionnels expérimentés en éducation et formation.
  Partage et solidarité ici et là-bas
  Échange d’expériences et de compétences
  Co construction de solutions pérennes

  NOS MISSIONS
  Accompagner les dynamiques locales et nationales dans la mise en œuvre de projets
  ducatifs, en réponse à la demande des acteurs de la société civile et/ou des
  institutions
  Trouver ensemble des solutions novatrices de développement en privilégiant la
  qualité, le genre, l’égalité
  Soutenir la langue française dans le respect de la diversité culturelle et
  linguistique
  Faciliter la mise en réseau des différents acteurs pour assurer efficacité et
  pérennité
  Développer l’éducation au développement et à la solidarité"
  email: "grefnantesfle@gmail.com",
  kind:
  total_volunteers:
  siren:
  category:
  website: "http://www.gref.asso.fr",
  facebook:
  linkedin:
  twitter:
  address:
  creation_date: 1980,
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"06 88 21 81 65 - 02 40 73 94 00"
acceuil = Organization.create!(
  name: "L'Acceuil d'abord",
  description: "> Des logements mis à disposition gratuitement dans l’agglomération
   nantaise, du gros matériel ménager (frigo, machines à laver le linge…)
  > Des personnes pour accompagner les familles hébergées (compétences sociales,
  compétences linguistiques appréciées)
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
  description: "une organisation œcuménique, créée il y a douze ans par des
  militants catholiques, protestants et orthodoxes. Leur but : aider les familles
  igrantes les plus démunies, et déboutées du droit d’asile, en leur trouvant
  d’abord un toit, puis en les aidant au niveau administratif pour s’intégrer
  au mieux dans la société française.
  Depuis sa création, l’association a accompagné efficacement des dizaines de
  familles afin qu’elles trouvent un nouveau départ.",
  email: "pastorale.migrants@nantes.cef.fr",
  kind:
  total_volunteers: 20,
  siren:
  category:
  website:
  facebook:
  linkedin:
  twitter:
  address: "43 Rue Gaston Turpin 44000 Nantes",
  creation_date: 2006,
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"02 40 74 64 17 - 06 21 13 33 89"
gout_des_autres = Organization.create!(
  name: "Le Goût des Autres",
  description: "L’association créée fin 2009 a pour objet la découverte, la
  connaissance, la diffusion des cultures étrangères à travers leurs pratiques
  culinaires.
  L’activité de l’association se déroule au domicile des particuliers, auprès des
  entres de loisirs, des maisons de quartiers, des comités d’entreprises et peut
  être associée au déroulement de tout évènement festif ou culturel.
  Pour permettre à des familles qui ont fui leur pays pour cause de conflits, de
  violences ou de menaces, de faciliter leur intégration dans notre région et les
  ccompagner dans ce sens ;
  Pour proposer un accès à l’emploi à des femmes étrangères rencontrant par
  ailleurs d’importantes difficultés dans le monde du travail ;
  Pour générer du revenu et de l’activité, véritable plus-value du projet à travers
  n mode de gestion participatif ;
  Pour mettre à profit l’échange de savoirs comme élément de reconnaissance sociale
  t culturelle ;
  Pour favoriser le lien intergénérationnel à travers la rencontre et le partage
  entre individus ;
  Pour encourager le développement des solidarités et l’établissement d’un mieux
  vivre ensemble.
"
  email: "legoutdesautres@ml.free.fr",
  kind:
  total_volunteers: 500,
  siren: 773 567 425,
  category:
  website: "http://www.legoutdesautres.org/",
  facebook:
  linkedin:
  twitter:
  address: "23, rue Henri Brunelière 44000 Nantes",
  creation_date: 2009,
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"06 08 16 52 61"
ligue_droits_de_lhomme = Organization.create!(
  name: "Ligue des Droits de l'Homme",
  description: "En 1898, des citoyens, révoltés par l’injustice dont était victime
  le Capitaine Dreyfus, décidaient de créer la Ligue française pour la défense
  des droits de l’homme et du citoyen. Ils s’engageaient alors à porter aide et
  assistance « à toute personne dont la liberté serait menacée ou dont le droit
  serait violé ». Cet engagement est toujours le nôtre. C’est avec la même
  exigence d’une lutte contre « toutes les formes d’intolérance et d’arbitraire »
  que nous voulons construire le mouvement civique de demain.",
  email: "ldh.nantes@orange.fr",
  kind:
  total_volunteers: 150,
  siren: 775 345 245,
  category:
  website: "http://site.ldh-france.org/nantes/",
  facebook:
  linkedin:
  twitter:
  address: "4 Place de la Manu 44000 Nantes",
  creation_date: 1898,
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"07 86 51 74 99"
saint_jean = Organization.create!(
  name: "Logis St Jean",
  description: "Offrir un lieu de rencontres et accompagner les pesonnes isolées,
  demandeurs d'asile et déboutés du droit d'asile.",
  email: "logissaintjean@gmail.com",
  kind:
  total_volunteers: 60,
  siren:
  category:
  website:
  facebook:
  linkedin:
  twitter:
  address: "11 Rue du Chapeau Rouge 44000 Nantes",
  creation_date: 2010,
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"02 49 44 36 91"
mrap = Organization.create!(
  name: "MRAP - Mouvement contre le racisme et pour l'amitié entre les peuples",
  description: "Association française non gouvernementale, créée en 1949 par
  d'anciens résistants et déportés de la Seconde Guerre mondiale, qui se définit c
  omme un moyen de revendication pour « l'égalité des droits entre tous les
  citoyens »",
  email: "mrapnantes@hotmail.com",
  kind:
  total_volunteers:
  siren: 537 929 192,
  category:
  website: "http://mrap.fr/",
  facebook:
  linkedin:
  twitter:
  address: "11 rue de Prinquiau 44100 Nantes",
  creation_date: 1949,
  logo:
  photo_1:
  photo_2:
  photo_3:
)
"02 40 58 08 09"
medecins_du_monde = Organization.create!(
  name: "Médecins du Monde",
  description: "Présent en France et dans 80 pays, Médecins du Monde est un
  mouvement international indépendant de militants actifs qui soignent, témoignent
  et accompagnent le changement social. À partir de nos 388 programmes médicaux
  innovants et d’un plaidoyer basé sur des faits, nous mettons les personnes
  exclues et leurs communautés en capacité d’accéder à la santé tout en se battant
  pour un accès universel aux soins.​",
  email: "pays-de-la-loire@medecinsdumonde.net",
  kind:
  total_volunteers: 14000,
  siren: 305 009 102,
  category:
  website: "https://www.medecinsdumonde.org/fr",
  facebook:
  linkedin:
  twitter:
  address: "33 Rue Fouré 44000 Nantes",
  creation_date: 1954,
  logo:
  photo_1:
  photo_2:
  photo_3:
)
# "02 40 47 36 99"
# asamla = Organization.create!(
#   name: "ASAMLA - Santé Migrants de Loire-Atlantique"
#   description:
#   email: "hdivet@cg44.fr",
#   kind:
#   total_volunteers:
#   siren:
#   category:
#   website:
#   facebook:
#   linkedin:
#   twitter:
#   address: "49-51 Chaussée de la Madeleine 44000 Nantes",
#   creation_date:
#   logo:
#   photo_1:
#   photo_2:
#   photo_3:
# )
# "02 40 48 51 99"
# secours_catholique = Organization.create!(
#   name: "Secours Catholique",
#   description:
#   email: "loireatlantique@secours-catholique.org",
#   kind:
#   total_volunteers:
#   siren:
#   category:
#   website:
#   facebook:
#   linkedin:
#   twitter:
#   address: "1 Rue Lorette de la Refoulais 44000 Nantes",
#   creation_date:
#   logo:
#   photo_1:
#   photo_2:
#   photo_3:
# )
# "02 40 29 04 26"
# secours_pop = Organization.create!(
#   name:
#   description: "> Des chauffeurs-livreurs pour les denrées alimentaires",
#   email: "contact@spf44.org",
#   kind:
#   total_volunteers:
#   siren:
#   category:
#   website:
#   facebook:
#   linkedin:
#   twitter:
#   address: "163, rue Paul Bellamy 44000 Nantes",
#   creation_date:
#   logo:
#   photo_1:
#   photo_2:
#   photo_3:
# )
# "02 40 74 14 14 - 02 40 74 48 41"
# fraternité = Organization.create!(
#   name: "La Fraternité",
#   description:
#   email: "la-fraternite@wanadoo.fr",
#   kind:
#   total_volunteers:
#   siren:
#   category:
#   website:
#   facebook:
#   linkedin:
#   twitter:
#   address: "3 Rue Amiral Du Chaffault 44100 Nantes",
#   creation_date:
#   logo:
#   photo_1:
#   photo_2:
#   photo_3:
# )
# "02 40 69 37 63"
# resf = Organization.create!(
#   name: "RESF - Collectif Enfants Etrangers",
#   description:
#   email: "ceecs44@gmail.com",
#   kind:
#   total_volunteers:
#   siren:
#   category:
#   website:
#   facebook:
#   linkedin:
#   twitter:
#   address: "6 place de la Manufacture 44000 Nantes",
#   creation_date:
#   logo:
#   photo_1:
#   photo_2:
#   photo_3:
# )
# "06 85 02 01 70 - 02 40 06 72 55"
