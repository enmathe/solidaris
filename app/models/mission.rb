class Mission < ApplicationRecord
 validates :category, presence: true
 geocoded_by :address
 after_validation :geocode, if: :will_save_change_to_address?


  STATUSES = ["draft", "published"]
  validates :status, inclusion: {in: STATUSES}

 extend Enumerize
 enumerize :category, in: [
   :Hebergement,
   :Activite,
   :Collecte,
   :Accompagnement,
   :Evenement,
   :Maraude,
   :Enseignement,
   :Sante,
   :Autre
 ]
end

