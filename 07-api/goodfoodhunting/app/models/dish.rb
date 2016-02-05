class Dish < ActiveRecord::Base
  has_many :likes, dependent: :destroy

  def counter
    likes.count
  end

end
