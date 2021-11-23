class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :itinerary
  validates :start_date, presence: true
  validates :end_date, presence: true
end
