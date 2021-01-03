class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def index
    @food_shop = FoodShop.find(params[:food_shop_id])
    @reviews = @food_shop.reviews
  end

  def create
   @review = Review.new(review_params)
   @review.user_id = current_user.id
   if @review.save
     redirect_to food_shop_reviews_path(@review.food_shop)
   else
     @food_shop = FoodnShop.find(params[:food_shop_id])
     render "food_shops/show"
   end
 end

 private
 def review_params
   params.require(:review).permit(:food_shop_id, :score, :content)
 end
end
