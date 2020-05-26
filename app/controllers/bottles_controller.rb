class BottlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bottles = Bottle.all
  end

  def show
    @bottle = Bottle.find(params[:id])
  end

private

  def bottle_params
    params.require(:bottle).permit(:year, :region, :domain, :price_range, :grapes, :color, :description)
  end
end
