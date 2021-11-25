class AddDayToStops < ActiveRecord::Migration[6.1]
  def change
    add_column :stops, :day, :integer
  end
end
