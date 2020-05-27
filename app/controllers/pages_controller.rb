class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def quiz
    @personnalities = ['Informed', 'Curious', 'Skeptical']
    @production_types = ['Bio', 'Vegan', 'Natural', 'Who cares?']
    @reasons = ['Impress your friends', 'Complete my cellar', 'Bring to dinner', 'Discovery']
    @explorations = ['Regions', 'Grape varieties', 'Aromes', 'Vintage']
    @user_answer = UserAnswer.new
  end

  def home
  end
end
