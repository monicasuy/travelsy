class City < ApplicationRecord
  has_many :itineraries
  has_many :stops, through: :itineraries
  validates :name, presence: true
  has_one_attached :photo
end
