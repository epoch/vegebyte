class Dish < ActiveRecord::Base
  has_many :comments
end
