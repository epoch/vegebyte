

require 'faker'

Like.delete_all
Dish.delete_all

food = ['cake','pudding','nuts','candy','muffin','burger']

27.times do |count|

  name = Faker::Commerce.product_name.split(' ')
  name[-1] = food.sample

  options = {
    name: name.join(' '), 
    image_url: 'http://s3.amazonaws.com/foodspotting-ec2/reviews/5729827/thumb_600.jpg'
  }

  Dish.create(options)

end