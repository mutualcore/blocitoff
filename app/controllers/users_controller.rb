class UsersController < ApplicationController
  def new
  end

  def update
  end

  def show
    @user = User.find(params[:id])
  end

  def index
  end
end
