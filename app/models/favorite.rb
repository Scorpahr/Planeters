class Favorite < ApplicationRecord
  belongs_to :planet
  belongs_to :user

  validates :planet_id, presence: true
  validates :user_id, presence: true
end
