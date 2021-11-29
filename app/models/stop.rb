class Stop < ApplicationRecord
  belongs_to :itinerary
  validates :title, presence: true
  validates :content, presence: true, length: { minumum: 10, maximum: 2400, wrong_length: "Description should be between
                                                                                              10 to 2400 characters" }
  validates :price, presence: true
  validates :address, presence: true
  validates :day, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
end
