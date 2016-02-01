class DishesController < ApplicationController

  def index
    @dishes = Dish.all
  end

  def new
  end

  def create
    @dish = Dish.new
    @dish.name = params[:name]
    @dish.save
    redirect_to '/'
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])
    @dish.name = params[:name]
    @dish.save
    redirect_to '/'
  end

end