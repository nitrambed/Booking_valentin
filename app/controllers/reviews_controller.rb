class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @valentin = Valentin.find(params[:valentin_id])

  end

  def destroy
    @review = Review.find(params[:id])
    @review.user = current_user
    @review.destroy
    redirect_to valentin_path(@review.valentin)
  end

  def create
    @review = Review.new(review_params)
    @valentin = Valentin.find(params[:valentin_id])
    # @review.user_id = current_user.id
    # @review.valentin_id = @valentin.id
    @review.user = current_user
    @review.valentin = @valentin
    if @review.save
      redirect_to valentin_path(@valentin)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
