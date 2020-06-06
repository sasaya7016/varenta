class UsersController < ApplicationController
  # before_action :set_user, only: [:show]
  
  def show
  #   @name = current_user.name
  #   # @products = current_user.products

    user = User.find(params[:id])
    @nickname = user.nickname
    @tweets = user.tweets.page(params[:page]).per(5).order("created_at DESC")
  end

  def edit
  end

  def update
    # if current_user.update(user_params)
    #   redirect_to root_path
    # else
    #   render :edit
    # end
  end

  private
  # def set_user
  #   @user = User.find(params[:id])
  # end

  # def user_params
  #   params.require(:user).permit(:name, :email)
  # end
end
