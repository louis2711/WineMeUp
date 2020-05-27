class BottlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bottles = Bottle.all
    @bottles = Bottle.filter(params.slice(:vintage, :region, :domain, :price_range, :grape_variety, :color, :description, :typical_meal))
  end

  def show
    @bottle = Bottle.find(params[:id])
  end

private

  def bottle_params
    params.require(:bottle).permit(:vintage, :region, :domain, :price_range, :grape_variety, :color, :description)
  end
end



