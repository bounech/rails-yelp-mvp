class ReviewsController < ApplicationController
  def index
    # index action
  end

  def show
    # show action
  end

  def new
    # new action
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # create action
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
    # edit action
  end

  def update
    # update action
  end

  def delete
    # delete action
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
