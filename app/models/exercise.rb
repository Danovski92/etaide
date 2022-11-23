class Exercise < ApplicationRecord
  CATEGORIES = ["Front-end", "Back-end", "Base de données", "Transverse", "Initiation"]
  has_many :bookings
  belongs_to :user
  validates :name, :description, :response_time, :price_per_day, :category, presence: true
  validates :price_per_day, :response_time, numericality: true
  validates :category, inclusion: { in: CATEGORIES }
end
