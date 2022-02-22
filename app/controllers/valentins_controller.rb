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
end
