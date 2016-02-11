class PagesController < ApplicationController


  def home
    @dishes = Dish.all
  end

end