class Studio < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :location, presence: true
  validates :rate, presence: true
  has_many_attached :photos
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
