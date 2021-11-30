class Stop < ApplicationRecord
  belongs_to :itinerary
  validates :title, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :day, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
end
