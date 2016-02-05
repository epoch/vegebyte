class Api::DishesController < ApplicationController

  def index
    @dishes = Dish.all

    # @dishes = @dishes.map do |dish|
    #   { name: dish.name, count: dish.counter, id: dish.id }
    # end

    render json: @dishes, methods: [:counter], status: 200
  end

end