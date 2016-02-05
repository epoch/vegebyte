class Admin::LikesController < ApplicationController

  def index
    @likes = Like.all
  end

end
