class Exercise < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :name, :description, :response_time, :price_per_day, :category, presence: true
  validates :price_per_day, :response_time, numericality: true
  validates :category, inclusion: { in: ["A", "B", "C", "D"] }
end
