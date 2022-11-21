class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :exercise
  validates :start_date, :end_date, presence: true
  # PHILOU TO DO
end
