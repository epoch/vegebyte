class Dish < ActiveRecord::Base
  belongs_to :dish_type
  has_many :likes

  validates :name, presence: true
  validates :name, length: { minimum: 2 }
end