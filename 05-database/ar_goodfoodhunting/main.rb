require 'sinatra'
require 'pg'
require './db_config'

%w{dish dish_type user like}.each do |file|
  require "./models/#{file}"
end

# require './models/dish'
# require './models/dish_type'
# require './models/user'

require 'pry'
require 'sinatra/reloader'

enable :sessions

helpers do

  def logged_in?
    !!current_user
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

end

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
  @dish = Dish.new
  erb :new
end

# create a dish
post '/dishes' do
  @dish = Dish.new
  @dish.name = params[:name]
  @dish.image_url = params[:image_url]
  @dish.dish_type_id = params[:dish_type_id]

  if @dish.save
    redirect to '/'
  else
    @dish_types = DishType.all
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
  @dish_types = DishType.all
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

post '/likes' do
  # params[:dish_id]
  # current_user.id
  like = Like.new
  like.user_id = current_user.id
  like.dish_id = params[:dish_id] 
  if like.save
    redirect to '/'
  end
  # Like.create(user_id: current_user.id, dish_id: params[:dish_id])
end

delete '/likes' do
  likes = Like.where(user_id: current_user.id, dish_id: params[:dish_id])

  likes.each do |like|
    like.destroy
  end
  redirect to '/'
end

# authentication ==================

# show the form
get '/session/new' do
  erb :login
end

# login
post '/session' do

  # search for the user
  user = User.find_by(email: params[:email])

  # authenticate the password
  if user && user.authenticate(params[:password])
    # create a session
    session[:user_id] = user.id
    # redirect to somewhere else
    redirect to '/'
  else
    # stay on the login form for now
    erb :login
  end 


end

# logout
delete '/session' do
  session[:user_id] = nil
  redirect to '/session/new'
end
