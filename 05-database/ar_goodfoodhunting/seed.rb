require './db_config'
require './models/dish'
require './models/dish_type'
require './models/user'
require './models/like'

img = 'http://s3.amazonaws.com/foodspotting-ec2/reviews/5714113/thumb_600.jpg?1453015528?1453075052'

DishType.delete_all
Dish.delete_all

DishType.create(name: 'snack')
DishType.create(name: 'dessert')

brunch = DishType.create(name: 'brunch')

Dish.create(name: 'cakepudding', dish_type_id: brunch.id)

# DishType.all.map{ |dish_type| dish_type.id }
# DishType.pluck(:id)

10.times do |count|
  Dish.create(name: "dish-#{count}", image_url: img)
end

