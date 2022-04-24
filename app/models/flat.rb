class Flat < ApplicationRecord
  belongs_to :user
  geocoded_by :address

  validates :title, presence: true
  validates :number_of_travelers, presence: true
  validates :number_of_beds, presence: true
  validates :number_of_bathrooms, presence: true
  validates :address, presence: true

  after_validation :geocode, if: :will_save_change_to_address?

  has_many :bookings
end
