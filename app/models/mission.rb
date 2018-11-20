class Mission < ApplicationRecord
  has_many :applications
  belongs_to :organization
  has_many :users, through: :applications
  validates :category, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  scope :category, -> category { where("category ILIKE ?", category) unless category == "categories" }
  # scope :address, -> city { near(address, 1) }
  scope :recurrency, -> recurrency { scope_recurrency(recurrency) }
  scope :time_range, -> time_range { scope_time_range(time_range) }


  extend Enumerize
  enumerize :category, in: [
    :Hebergement,
    :Activite,
    :Collecte,
    :Accompagnement,
    :Evenement,
    :Maraude,
    :Enseignement,
    :Sante
  ]

  def is_localized
    self.longitude && self.latitude
  end

  def self.scope_recurrency(recurrency)
    return unless recurrency.present? and recurrency != "both"
    if recurrency == "recurrent"
      self.where(recurrent: true)
    elsif recurrency == "ponctuel"
      self.where(recurrent: false)
    elsif recurrency == "urgent"
      self.where(recurrent: "false", end_candidature_date: (Date.today - 7)..Date.today)
    end
  end

  def self.scope_time_range(time_range)
    return unless time_range.present?
    starting_on, ending_on = time_range.split(' au ')

    starting_on = Date.strptime(starting_on, '%d.%m.%Y')
    ending_on = Date.strptime(ending_on, '%d.%m.%Y')

    self.where("date(starting_at) BETWEEN ? AND ?", starting_on, ending_on)
  end
end
