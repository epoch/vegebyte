class Api::LikesController < ApplicationController

  def create
    @like = Like.new
    @like.dish_id = params[:dish_id]

    if @like.save
      count = Dish.find(params[:dish_id]).likes.count

      render json: { count: count }, status: 201
    else
      render json: @like.errors
    end
  end

end