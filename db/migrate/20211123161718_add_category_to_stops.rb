class AddCategoryToStops < ActiveRecord::Migration[6.1]
  def change
    add_column :stops, :category, :string
  end
end
