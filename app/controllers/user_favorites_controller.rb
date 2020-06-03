class UserFavoritesController < ApplicationController

  def index
    @user_favorites = UserFavorite.all
  end

  def create
    @user_favorite = UserFavorite.new
    @user_favorite.user = current_user
    @user_favorite.bottle_id = params[:bottle_id]
    @user_favorite.save!
    redirect_to user_favorites_path

  end

  private

  # def user_favorite_params
  #   params.require(:user_favorite).permit(:user_id, :bottle_id)
  # end


end
