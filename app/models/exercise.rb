class Exercise < ApplicationRecord
  CATEGORIES = ["Front-end", "Back-end", "Base de données", "Transverse", "Initiation"]
  has_many :bookings
  belongs_to :user
  validates :name, :description, :response_time, :price_per_day, :category, :image, presence: true
  validates :price_per_day, :response_time, numericality: true
  validates :category, inclusion: { in: CATEGORIES }

  # search exercises by name and category
  include PgSearch::Model
  pg_search_scope :search_by_name_and_category,
  against: [ :name, :category ],
  using: {
    tsearch: { prefix: true }
  }
end
