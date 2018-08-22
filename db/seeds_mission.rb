vetements = Mission.create!({
  title: "Collecte de vêtements",
  category: "Collecte",
  address: "94 rue des hauts pavés, 44000 Nantes",
  volunteers_needed: 0,
  description: "En partenariat avec des écoles (Algérie, Egypte...) Orient Events recherche une personne en charge d'organiser une collecte de vêtements pour les enfants, livres, fournitures scolaires. Le bénévole sera en charge de - Rédaction du projet, - Recherche de partenaires (écoles, compagnies aériennes...) - Organiser la collecte - Trouver des partenaires afin d'acheminer les objets ",
  starting_at: "2018/10/17 14:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/10/17 13:00:00",
  organization_id: 2,
})

p "DONE !!!!"
nourriture = Mission.new!({
  title: "Collecte de nouriture",
  category: "Collecte",
  address: "94 rue des hauts pavés, 44000 Nantes",
  volunteers_needed: 0,
  description: "En partenariat avec des écoles (Algérie, Egypte...) Orient Events recherche une personne en charge d'organiser une collecte de vêtements pour les enfants, livres, fournitures scolaires. Le bénévole sera en charge de - Rédaction du projet, - Recherche de partenaires (écoles, compagnies aériennes...) - Organiser la collecte - Trouver des partenaires afin d'acheminer les objets ",
  skills_needed: "",
  starting_at: "2018/10/17 14:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/10/17 13:00:00",
  organization_id:
})

cours_de_français = Mission.new!({
  title: "Cours de français",
  category: "Enseignement",
  address: "15 rue Guépin, 44000 Nantes",
  volunteers_needed: 14,
  description: "Rejoignez notre association du 6eme arrondissement de Paris en tant que formateur PSC 1 (Prévention et secours civiques de niveau 1) Pourquoi former les français aux gestes qui sauvent ? En France, plusieurs milliers de personnes décèdent chaque année des suites d’une méconnaissance des gestes de premiers secours par leur entourage.Par ailleurs, les différents drames auxquels les français ont dû faire face ces deux dernières années rendent cette"
  skills_needed: 0,
  starting_at: "2018/10/17 14:00:00",
  duration_in_hours: 4.5,
  recurrent: true,
  recurrency_in_days: 4,
  recurrency_ending_on: "2018/12/17 14:00:00",
  end_candidature_date: "2018/10/17 14:00:00",
  organization_id:
})


hébergement = Mission.new!({
  title: "Herbergement d'urgence pour une famille de 5 personnes",
  category: "Hebergement",
  address: "15 rue Guépin, 44000 Nantes",
  volunteers_needed: 2,
  description: "Besoin d'hébergement une famille de 5 personnes d'origine erythréennes pendant 1 semaine."
  skills_needed: 0,
  starting_at: "2018/10/17 14:00:00",
  duration_in_hours: "",
  recurrent: true,
  recurrency_in_days: 5
  recurrency_ending_on: "2018/12/22 14:00:00",
  end_candidature_date: "2018/10/17 14:00:00",
  organization_id:
})


hébergement_2 = Mission.new!({
  title: "Herbergement d'urgence pour une mère et sa fille",
  category: "Hebergement",
  address: "26 boulevard de stalingrad, 44000 Nantes",
  volunteers_needed: 2,
  description: "Besoin d'hébergement une famille de 5 personnes d'origine erythréennes pendant 1 semaine."
  skills_needed: 0
  starting_at: "2018/11/17 14:00:00",
  duration_in_hours:
  recurrent: true
  recurrency_in_days: 5
  recurrency_ending_on: "2018/11/22 14:00:00",
  end_candidature_date: "2018/10/17 14:00:00",
  organization_id:
})


hébergement_3 = Mission.new!({
  title: "Herbergement d'urgence pour une fille de 15 ans",
  category: "Herbergement",
  address: "26 boulevard de stalingrad, 44000 Nantes",
  volunteers_needed: 1,
  description: "Besoin d'hébergement une famille de 5 personnes d'origine erythréennes pendant 1 semaine."
  skills_needed: 0,
  starting_at: "2018/09/17 14:00:00",
  recurrent: true,
  recurrency_in_days: 5,
  recurrency_ending_on: "2018/09/22 14:00:00",
  end_candidature_date: "2018/10/17 14:00:00",
  organization_id:
})

cours_de_dessin = Mission.new!({
  title: "Accompagnateurs pour un cours de dessin",
  category: "Activité",
  address: "16 boulevard de stalingrad, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Votre mission en tant que bénévole :
  - Encadrer avec 2 autres bénévoles un groupe d'une vingtaine de personnes
  - Apprendre les bases du dessin
  - Accompagner les personnes depuis leur domicile jusqu'au siège de l'association
  ",
  skills_needed: "
  Passionnée par le dessin,
  Bases en pédagogie,
  ",
  starting_at: "2018/09/12 15:00:00",
  duration_in_hours: 4,
  recurrent: false,
  end_candidature_date: "2018/09/12 15:00:00",
  organization_id:
})

cours_de_dessin = Mission.new!({
  title: "Accompagnateurs pour un cours de dessin",
  category: "Activité",
  address: "16 boulevard de stalingrad, 44000 Nantes",
  volunteers_needed: 4,
  description: "Votre mission en tant que bénévole :
  - Encadrer avec 2 autres bénévoles un groupe d'une vingtaine de personnes
  - Apprendre les bases du dessin
  - Accompagner les personnes depuis leur domicile jusqu'au siège de l'association",
  skills_needed: "
  Passionnée par le dessin,
  Bases en pédagogie,",
  starting_at: "2018/09/12 15:00:00",
  duration_in_hours: 3,
  recurrent: false,
  end_candidature_date: "2018/09/07 15:00:00",
  organization_id:
})

activité_sportive = Mission.new!({
  title: "Activité sportive avec les réfugiés",
  category: "Activité",
  address: "6 rue de l'Indre 44000 Nantes",
  volunteers_needed: 5,
  description: "Votre mission en tant que bénévole :
  - Encadrer avec 10 autres bénévoles un groupe d'une cinquantaine de personnes agées de 12 à 15 ans
  - Organiser un tournoi multisport (rugby, foot, hand, ... )
  - Aider les autres bénévoles à la préparation de la nourriture pour la journée
  - Aider à la mise en place et à la desinstallation des activités",
  skills_needed: "
  Passionnée par le sport,
  Bases en pédagogie,
  Avoir le BAFA serait un plus
  ",
  starting_at: "2018/09/03 08:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/08/31 08:00:00",
  organization_id:
})

accompagnateur_refugie = Mission.new!({
  title: "Accompagnateur binôme avec un réfugié",
  category: "Accompagnemement",
  address: "94 rue des hauts pavés, 44000 Nantes",
  volunteers_needed: 10,
  description: "Votre mission en tant que bénévole :
  - Encadrer avec 2 autres bénévoles un groupe d'une vingtaine de personnes
  - Apprendre les bases du dessin
  - Accompagner les personnes depuis leur domicile jusqu'au siège de l'association",
  skills_needed:"",
  starting_at: "2018/09/11 07:00:00",
  duration_in_hours: 4,
  recurrent: false,
  end_candidature_date: "2018/09/10 07:00:00",
  organization_id:
})

parrain = Mission.new!({
  title: "Parrain d'une personne réfugié",
  category: "Accompagnemement",
  address: "16 boulevard de stalingrad, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Nous recherchons des personnes habitant en france de longue date pour parrainer des réfugiés (1 rencontre par mois minimum pendant 6 mois) avec pour buts: l'amélioration du niveau de français à travers des conversations, sorties, ou toute initiative favorisant les échanges; la découverte de l'environnement et des loisirs (visites de la ville, de musées, séances de cinéma, spectacles, etc.); une meilleure connaissance de la culture française.",
  skills_needed: "
  - goût de l'engagement pour les causes de la solidarité
  - patience, pédagogie et habitude du travail d'équipe",
  starting_at: "2018/09/12 15:00:00"
  duration_in_hours: 2,
  recurrent: true,
  recurrency_in_days: 3,
  recurrency_ending_on: "2018/03/12 15:00:00",
  end_candidature_date: "2018/09/09 15:00:00",
  organization_id:
})

formateur_web = Mission.new!({
  title: "Formateur web",
  category: "Enseignement",
  address: "16 boulevard de stalingrad, 44000 Nantes",
  volunteers_needed: 1,
  description: "La crise migratoire ayant un impact sans précédent sur l'europe et le monde, notre mission est de promouvoir l’inclusion des personnes réfugiées dans ces communautés en s’appuyant sur l'innovation et la technologie. notre organisation s’attaque à la question de l’intégration des personnes réfugiées en leur proposant l’accès et la formation à des connaissances numériques.",
  skills_needed: "
  - connaissances bureautiques (pour les formateurs du niveau débutant)
  - connaissances essentielles de word, excel et du web (pour les formateurs du niveau intermédiaire)
  - utilisation fréquente d'excel (pour les formateurs du niveau pcie)
  - compétences linguistiques : anglais est un plus !
  - être disponible 3-6 heures par semaine
  - goût de l'engagement pour les causes de la solidarité
  - patience, pédagogie et habitude du travail d'équipe",
  starting_at: "2018/08/28 15:00:00",
  duration_in_hours: 3,
  recurrent: true,
  recurrency_in_days: 4,
  recurrency_ending_on: "2018/12/28 15:00:00",
  end_candidature_date: "2018/08/28 15:00:00",
  organization_id:
})

insertion_professionnelle = Mission.new!({
  title: "Insertion professionnelle des migrants",
  category: "Accompagnemement",
  address: "1 boulevard de stalingrad, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Acina mène un projet d'insertion professionnelle des nouveaux arrivants en situation d'exclusion, dont les personnes vivant en bidonville ou squat. dans ce cadre l'association recherche des personnes souhaitant s'impliquer dans le développement et la consolidation de partenariats avec des entreprises/centres de formation/structures d'insertion. plus largement, les bénévoles sont invités à réfléchir à des stratégies d'insertion innovantes.",
  skills_needed: "
  - compétences linguistiques : anglais est un plus !
  - goût de l'engagement pour les causes de la solidarité
  - patience, pédagogie et habitude du travail d'équipe",
  starting_at: "2018/09/12 15:00:00",
  duration_in_hours: 2,
  recurrent: true,
  recurrency_in_days: 7,
  recurrency_ending_on: "2018/01/12 15:00:00",
  end_candidature_date: "2018/09/12 14:00:00",
  organization_id:
})

maraude = Mission.new!({
  title: "Maraude",
  category: "MAraude",
  address: "16 boulevard de stalingrad, 44000 Nantes",
  volunteers_needed: 2,
  description: "Acina mène un projet d'insertion professionnelle des nouveaux arrivants en situation d'exclusion, dont les personnes vivant en bidonville ou squat. dans ce cadre l'association recherche des personnes souhaitant s'impliquer dans le développement et la consolidation de partenariats avec des entreprises/centres de formation/structures d'insertion. plus largement, les bénévoles sont invités à réfléchir à des stratégies d'insertion innovantes.",
  skills_needed: "
  Passionnée par le dessin,
  Bases en pédagogie ",
  starting_at: "2018/09/12 15:00:00",
  duration_in_hours: 3,
  recurrent: true,
  end_candidature_date:"2018/09/12 14:00:00",
  organization_id:
})

benevoles = Mission.new!({
  title: "Benevoles pour le festival des réfugiés",
  category: "Evenement",
  address: "1 place royal, 44000 Nantes",
  volunteers_needed: 15,
  description: "Votre mission en tant que bénévole sera une des suivantes en fonction du besoin:
  - Servir au bar
  - Accueil
  - Vente de place",
  skills_needed: "",
  starting_at: "2018/12/11 15:00:00",
  duration_in_hours: 2,
  recurrent: false,
  recurrency_in_days: 2,
  recurrency_ending_on: "2018/12/11 15:00:00",
  end_candidature_date: "2018/12/01 15:00:00",
  organization_id:
})


benevoles_entraide = Mission.new!({
  title: "Benevoles pour le festival de l'entraide",
  category: "Evenement",
  address: "5 quai des Antilles, 44000 Nantes",
  volunteers_needed: 2,
  description: "Votre mission en tant que bénévole sera une des suivantes en fonction du besoin:
  - Servir au bar
  - Accueil
  - Vente de place",
  skills_needed: "",
  starting_at: "2018/09/12 15:00:00",
  duration_in_hours: 4,
  recurrent: false,
  recurrency_in_days: 1,
  recurrency_ending_on: "2018/09/15 15:00:00",
  end_candidature_date: "2018/09/12 14:00:00",
  organization_id:
})


collecte_para = Mission.new!({
  title: "Collecte parapharmacie",
  category: "Collecte",
  address: "15 quai des Antilles, 44000 Nantes",
  volunteers_needed: 1000,
  description: "Collecte de tout élément de parapharmacie : pansements, serviettes hygièniques, tampons, crèmes, ...",
  skills_needed: "",
  starting_at: "2018/10/12 15:00:00",
  duration_in_hours: 10,
  recurrent: false,
  end_candidature_date: "2018/10/12 15:00:00",
  organization_id:
})

aide_aux_devoirs = Mission.new!({
  title: "Aide aux devoirs",
  category: "Enseignement",
  address: "6 boulevard de stalingrad, 44000 Nantes",
  volunteers_needed: 3,
  description: "Acina mène un projet d'insertion professionnelle des nouveaux arrivants en situation d'exclusion, dont les personnes vivant en bidonville ou squat. dans ce cadre l'association recherche des personnes souhaitant s'impliquer dans le développement et la consolidation de partenariats avec des entreprises/centres de formation/structures d'insertion. plus largement, les bénévoles sont invités à réfléchir à des stratégies d'insertion innovantes.",
  skills_needed:" - compétences linguistiques : anglais est un plus !
  - goût de l'engagement pour les causes de la solidarité
  - patience, pédagogie et habitude du travail d'équipe",
  starting_at: "2018/09/12 15:00:00",
  duration_in_hours: 3,
  recurrent: true,
  recurrency_in_days: 2,
  recurrency_ending_on: "2018/12/12 15:00:00",
  end_candidature_date:"2018/09/12 14:00:00",
  organization_id:
})
