class Review < ApplicationRecord
  belongs_to :planet
  belongs_to :user

  validates :comment, presence: true
  validates :rating, presence: true, inclusion: { in: 1..5 }
  validates :planet_id, presence: true
  validates :user_id, presence: true
end
