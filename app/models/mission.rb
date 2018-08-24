class Mission < ApplicationRecord
  has_many :applications
  belongs_to :organization
  has_many :users, through: :applications

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
