class Itinerary < ApplicationRecord
  belongs_to :city
  belongs_to :user
  has_many :stops, dependent: :destroy
  has_many :reviews
  validates :content, presence: true, length: { minimum: 10, maximum: 2400,
                                                wrong_length: "Description should be between 10 and 2400 characters" }
  validates :days, presence: true, inclusion: { within: 1..5 }
  accepts_nested_attributes_for :stops
end
