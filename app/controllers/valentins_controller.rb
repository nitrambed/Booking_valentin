class ValentinsController < ApplicationController
  def index
    @valentins = Valentin.all
  end

  def show
    @valentin = Valentin.find(params[:id])
  end

  def new
    @valentin = Valentin.new
  end

  def destroy
    @valentin = Valentin.find(params[:id])
    @valentin.destroy

    redirect_to valentins_path
  end

  def create
    @valentin = Valentin.new(valentin)
    @valentin.save

    redirect_to valentin_path(@valentin)
  end

  private

  def valentin_params
    params.require(:valentin).permit(:name, :price, :user_id, :short_description, :long_description)
  end
end
