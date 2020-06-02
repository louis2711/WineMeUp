class UserProfilesController < ApplicationController
  def show
    @user_profile = UserProfile.find(params[:id])
    search = Bottle.where(color: @user_profile.color, aroma: @user_profile.selected_aroma)
      if search.size.zero?
        @recommended_bottles = Bottle.where(color: @user_profile.color)
      else
        @recommended_bottles = Bottle.where(color: @user_profile.color, aroma: @user_profile.selected_aroma)
      end
  end
end
