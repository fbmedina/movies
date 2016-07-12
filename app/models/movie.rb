class Movie < ActiveRecord::Base
  belongs_to :category

  def color
    recommended ? "green": "red"
  end

end
