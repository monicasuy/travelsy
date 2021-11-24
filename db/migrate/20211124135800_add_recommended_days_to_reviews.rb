class AddRecommendedDaysToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :recommended_days, :integer
  end
end
