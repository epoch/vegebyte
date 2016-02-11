class CommentsController < ApplicationController


  def create
    @comment = Comment.new
    @comment.dish_id = params[:comment][:dish_id]
    @comment.body = params[:comment][:body]
    @comment.save

    render json: @comment
    # redirect_to "/dishes/#{@comment.dish_id}"
  end

end