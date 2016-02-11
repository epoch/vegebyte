class DishesController < ApplicationController


  def show
    @dish = Dish.find(params[:id])
    @comments = @dish.comments
  end

end