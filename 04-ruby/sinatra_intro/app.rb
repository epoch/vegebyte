require 'sinatra'

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

# dynamic route
get '/hello/:name' do
  "hello there, #{ params[:name] }"
end

get '/calc/multiply/:num1/:num2' do
  params[:num1].to_i * params[:num2].to_i
end

