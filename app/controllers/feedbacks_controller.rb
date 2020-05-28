class FeedbacksController < ApplicationController
  def new
    @bottle = Bottle.find(params[:bottle_id])
    @feedback = Feedback.new
  end
end
