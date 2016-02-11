Comment.delete_all
Dish.delete_all

(1..5).to_a.each do |num|
  dish = Dish.new(name: "dish-#{num}")
  dish.comments.new(body: 'hey ho')
  dish.save
end