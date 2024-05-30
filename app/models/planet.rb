class Planet < ApplicationRecord
  has_many :bookings
  has_many :reviews
  has_many :favorites

  # Cloudinary
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  # validates :image, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :max_person, presence: true, numericality: { only_integer: true, greater_than: 0 }

  scope :by_id, -> { sort }

  geocoded_by latitude: :latitude, longitude: :longitude
end
