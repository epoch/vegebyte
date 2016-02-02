class Api::DishesController < ApplicationController

  def index
    @dishes = Dish.all
    render json: @dishes, status: 200
  end

end