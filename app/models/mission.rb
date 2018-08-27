class Mission < ApplicationRecord
  has_many :applications
  belongs_to :organization
  has_many :users, through: :applications
  validates :category, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


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

