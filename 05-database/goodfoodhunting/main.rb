     
require 'sinatra'
require 'sinatra/reloader'
require 'pg'


def run_sql(sql)
  db = PG.connect(dbname: 'goodfoodhunting')
  results = db.exec(sql)
  db.close
  return results  
end

get '/' do
  sql = 'SELECT * FROM dishes;'
  @dishes = run_sql(sql)
  erb :index
end

# show the new dish form
get '/dishes/new' do
  erb :new
end

# create a dish
post '/dishes' do
  sql = "INSERT INTO dishes (name, image_url) values ('#{ params[:name] }', '#{ params[:image_url] }');"
  run_sql(sql)
  redirect to '/'
end

# show single dish
get '/dishes/:id' do
  sql = "SELECT * FROM dishes WHERE id = #{ params[:id] };"
  @dish = run_sql(sql)[0]
  erb :show
end


# get the update form
get '/dishes/:id/edit' do

  sql = "SELECT * FROM dishes where id = #{ params[:id] }"
  # pg always return a collection
  @dish = run_sql(sql)[0]
  erb :edit
end

# update the dish
put '/dishes/:id' do
  # update existing dish
  sql = "UPDATE dishes SET name = '#{ params[:name] }', image_url = '#{ params[:image_url] }' WHERE id = #{ params[:id] };"

  run_sql(sql)
  # redirect to another page with a get request
  redirect to "/dishes/#{ params[:id] }"
end

delete '/dishes/:id' do
  # delete dish at id
  sql = "DELETE FROM dishes WHERE id = #{ params[:id] };"
  run_sql(sql)

  # redirect to home
  redirect to '/'
end





