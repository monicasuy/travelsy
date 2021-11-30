class AddKeywordsToItineraries < ActiveRecord::Migration[6.1]
  def change
    add_column :itineraries, :keywords, :string
  end
end
