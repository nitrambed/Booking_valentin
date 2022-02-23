class BookingsController < ApplicationController
  before_action :find_valentin, only: %i[new]

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save!
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :edit
    end

  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to root_path
  end

  private

  def find_valentin
    id = params[:valentin_id] || booking_params[:valentin_id]
    @valentin = Valentin.find(id)
  end

  def booking_params
    params.require(:booking).permit(:reservation_at, :valentin_id)
  end

  def article_params
    params.require(:article).permit(:title, :body, :photo)
  end
end
