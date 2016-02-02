class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
  end

  def create
    @user = User.new
    @user.email = params[:email]
    @user.save
    redirect_to '/users'
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.email = params[:email]
    @user.save
    redirect_to '/'
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/'
  end

end