class Like < ActiveRecord::Base
  belongs_to :dish
  belongs_to :user

  validates :dish_id, presence: true 

end
