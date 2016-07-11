class AddCategoryToMovie < ActiveRecord::Migration
  def change
    add_reference :movies, :category, index: true, foreign_key: true
  end
end
