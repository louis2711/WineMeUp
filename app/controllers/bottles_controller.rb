class BottlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bottles = Bottle.all
    @bottles = Bottle.filter(params.slice(:vintage, :region, :domain, :price_range, :grape_variety, :color, :characteristics, :typical_meal, :aroma, :country))
  end

  def show
    @bottle = Bottle.find(params[:id])
    @feedback = Feedback.new
  end
end
