class UserProfilesController < ApplicationController
  def show
    @user_profile = UserProfile.find(params[:id])
    search_color_aroma_grape = Bottle.where(color: @user_profile.color, aroma: @user_profile.selected_aroma).select {|bottle| bottle.grape_variety.include?(@user_profile.selected_grape)}
      # if search.size.zero?
      #   @recommended_bottles = Bottle.where(color: @user_profile.color)
      # else
      #   @recommended_bottles = Bottle.where(color: @user_profile.color, aroma: @user_profile.selected_aroma)
      # end


    if search_color_aroma_grape.size.zero?
      search_color_aroma = Bottle.where(color: @user_profile.color, aroma: @user_profile.selected_aroma)
      search_color_grape = Bottle.where(color: @user_profile.color).select {|bottle| bottle.grape_variety.include?(@user_profile.selected_grape)}
      if search_color_aroma.size > 0
        @recommended_bottles = search_color_aroma
      elsif search_color_grape.size > 0
        @recommended_bottles = search_color_grape
      else
        @recommended_bottles = Bottle.where(color: @user_profile.color)
      end

    # elsif @recommended_bottles = Bottle.where(color: @user_profile.color, aroma: @user_profile.selected_aroma)
    # else
    #   @recommended_bottles = Bottle.where(color: @user_profile.color, aroma: @user_profile.selected_aroma, grape_variety: @user_profile.selected_grape)
    end

  end
end
