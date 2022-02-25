class ValentinsController < ApplicationController
  def index
    @valentins = Valentin.all

    # @valentins = Valentin.geocoded

    @markers = @valentins.geocoded.map do |valentin|
      marker_url = if valentin.marker_photo.attached?
                    Rails.application.routes.url_helpers.rails_blob_path(valentin.marker_photo, only_path: true)
                  else
                    helpers.asset_url("val.png")
                  end
      {
        lat: valentin.latitude,
        lng: valentin.longitude,
        info_window: render_to_string(partial: "info_window", locals: { valentin: valentin }),
        image_url: marker_url
      }
    end
  end

  def show
    @valentin = Valentin.find(params[:id])
    @booking = Booking.new
    @bookings = @valentin.bookings
    @review = Review.new
    @reviews = @valentin.reviews
  end

  def new
    @valentin = Valentin.new
  end

  def destroy
    @valentin = Valentin.find(params[:id])
    @valentin.destroy
    redirect_to user_path(current_user.id)
  end

  def create
    @valentin = Valentin.new(valentin_params)
    @valentin.user = current_user
    if @valentin.save
      redirect_to valentin_path(@valentin)
    else
      redirect_to new_valentin_path, alert: "fail"
    end
  end

  private

  def valentin_params
    params.require(:valentin).permit(:name, :price, :short_description, :long_description, :photo)
  end
end
