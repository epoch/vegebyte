require 'sinatra'
require 'pg'
require './db_config'
require './models/dish'
require './models/dish_type'

require 'sinatra/reloader'
require 'pry'

get '/dish_types' do
  @dish_types = DishType.all
  erb :dish_types
end

get '/' do
  @dish_types = DishType.all

  if params[:dish_type_id]
    @dishes = Dish.where(dish_type_id: params[:dish_type_id])
  else
    @dishes = Dish.all
  end

  erb :index
end

# show the new dish form
get '/dishes/new' do
  erb :new
end

# create a dish
post '/dishes' do
  dish = Dish.new
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.dish_type_id = params[:dish_type_id]

  if dish.save
    redirect to '/'
  else
    erb :new
  end
end

# show single dish
get '/dishes/:id' do
  @dish = Dish.find(params[:id])
  erb :show
end


# get the update form
get '/dishes/:id/edit' do
  sql = 'SELECT * FROM dish_types;'
  @dish_types = run_sql(sql)
  @dish = Dish.find(params[:id])
  erb :edit
end

# update the dish
put '/dishes/:id' do
  dish = Dish.find(params[:id])

  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.dish_type_id = params[:dish_type_id]
  dish.save
  redirect to "/dishes/#{ params[:id] }"
end

delete '/dishes/:id' do
  dish = Dish.find(params[:id])
  dish.destroy
  # redirect to home
  redirect to '/'
end
