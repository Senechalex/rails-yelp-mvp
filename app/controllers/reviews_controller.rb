class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_path(@review)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

#   def create
#     @restaurant = Restaurant.new(restaurant_params)
#     if @restaurant.save
#       redirect_to restaurant_path(@restaurant)
#     else
#       render :new
#     end
#   end




#   end

#   def edit
#   end

#   def update
#     @restaurant.update(restaurant_params)
#     redirect_to restaurant_path(@restaurant)
#   end

#   def delete
#   end

# private

#   def restaurant_params
#     params.require(:restaurant).permit(:name, :address, :category, :phone_number)
#   end

#   def set_restaurant
#     @restaurant = Restaurant.find(params[:id])
#   end


# end
