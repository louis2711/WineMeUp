class UserFavoritesController < ApplicationController

  def index
    @user_favorites = UserFavorite.all
  end

  def create
    @user_favorite = UserFavorite.new
    @user_favorite.user = current_user
    @user_favorite.bottle_id = params[:bottle_id]
    @user_favorite.save!
    redirect_back(fallback_location:bottles_path, notice: 'Your bottle has been added to your favorite!')
  end

  def destroy
    @user_favorite = UserFavorite.find(params[:id])
    @user_favorite.destroy
    redirect_to user_favorites_path
  end

  private

  # def user_favorite_params
  #   params.require(:user_favorite).permit(:user_id, :bottle_id)
  # end


end
