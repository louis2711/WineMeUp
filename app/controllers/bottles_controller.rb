class BottlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bottles = Bottle.all
    @bottles = Bottle.filter(params.slice(:vintage, :region, :domain, :price_range, :grape_variety, :color, :characteristics, :typical_meal, :aroma, :country))
    if params[:color]
      color_params = params[:color].map{|color| color.downcase.to_sym}
      @varieties = color_params.map{|color| Bottle::GRAPE_VARIETY[color]}.flatten.uniq
    else
      @varieties = Bottle::GRAPE_VARIETY.values.flatten.uniq
    end
    @colors = Bottle::COLORS
    @answers = current_user.user_answers if user_signed_in? && current_user.user_answers.exist?
  end

  def show
    @bottle = Bottle.find(params[:id])
    @feedback = Feedback.new
  end
end
