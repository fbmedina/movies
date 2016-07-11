class AddRecommendedToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :recommended, :boolean, default: false
  end
end
