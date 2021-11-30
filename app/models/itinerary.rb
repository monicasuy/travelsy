class Itinerary < ApplicationRecord
  belongs_to :city
  belongs_to :user
  has_many :stops, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :content, presence: true, length: { minimum: 10, maximum: 2400,
                                                wrong_length: "Description should be between 10 and 2400 characters" }
  validates :days, presence: true, inclusion: { within: 1..5 }
  accepts_nested_attributes_for :stops
  ACTIVITIES = ["partying", "drinking", "hiking", "relaxing" ]
  TYPE = ["monuments", "iconic buildings", "museums", "restaurants", "neighborhoods"]

  def total_cost
    total_price = 0
    self.stops.each do |stop|
      total_price += stop.price
    end
    return total_price
  end

end
