class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = current_user
    @bookings = @user.bookings
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
        redirect_to user_path(@user)
    else
        render :edit
    end
  end

  private

  def find_user
    id = params[:user_id] || user_params[:user_id]
    @user = User.find(id)
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :photo)
  end
end
