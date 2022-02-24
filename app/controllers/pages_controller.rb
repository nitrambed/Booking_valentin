class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @valentins = Valentin.all
  end

  def search
    if params[:query].present?
      puts params[:query]
      @valentins = Valentin.search_by_name_and_description(params[:query])
    else
      @valentins = Valentin.all
    end
  end
end
