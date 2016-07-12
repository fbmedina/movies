class Category < ActiveRecord::Base
  has_many :movies, dependent: :destroy
end
