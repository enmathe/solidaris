class Mission < ApplicationRecord
  has_many :applications
  belongs_to :organization
  has_many :users, through: :applications
end
