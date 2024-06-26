class Booking < ApplicationRecord
  belongs_to :planet
  belongs_to :user

  validates :total_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :status, presence: true
  validates :planet_id, presence: true
  validates :user_id, presence: true
  validates :start_date, :end_date, presence: true
end
