class Review < ApplicationRecord
  belongs_to :itinerary
  validates :content, presence: true, length: { minimum: 10, maximum: 2400,
                                                wrong_length: "Value should be between 8 and 10 characters" }
  validates :recommended_days, numericality: true, presence: true, inclusion: { within: 1..10 }
end
