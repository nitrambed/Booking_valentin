class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @valentins = Valentin.all
  end
end
