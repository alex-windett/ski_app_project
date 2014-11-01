class UserController < ApplicationController

  # before_filter :authenticate_user!
  
  def index
    @user = User.order(:name).page(params[:page])
  end

  def show
    @user = User.find(params[:id])
    @runs = Run.all
  end
end
