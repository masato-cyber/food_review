class FoodShopsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def index
    @food_shops = FoodShop.all
  end

  def show
    @food_shop = FoodShop.find(params[:id])
    @review = Review.new
  end
end
