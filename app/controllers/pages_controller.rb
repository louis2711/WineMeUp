class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :quiz ]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def quiz
    @personnalities = ['Informed', 'Curious', 'Skeptical']
    @production_types = ['Organic', 'Vegan', 'Natural', 'Regular']
    @reasons = ['Impress your friends', 'Complete my cellar', 'Bring to dinner', 'Discovery']
    @explorations = ['Regions', 'Grape varieties', 'Aromas', 'Vintage']
    @worlds = ['New world', 'Old world']
    @regions = ['America', 'Europe', 'Oceania', 'Africa']
    @colours = ['Red', 'Rosé', 'Sweet', 'White', 'Port', 'Sparkling']
    @aromas = ['Fruity', 'Herbal', 'Floral', 'Woody', 'Spicy', 'Mineral']
    @grape_reds = ['Cabernet Sauvignon', 'Cabernet Franc', 'Merlot', 'Pinot Noir', 'Gamay', 'Syrah', 'Grenache', 'Cinsault', 'Malbec', 'Sangiovese']
    @grape_roses = ['Carignan', 'Syrah', 'Grenache', 'Cinsault', 'Mourvèdre', 'Syrah']
    @grape_sweets = ['Muscadelle', 'Gewurztraminer', 'Tokaj']
    @grape_whites = ['Chardonnay', 'Chasselas' 'Sauvignon blanc', 'Chenin', 'Riesling', 'Viognier', 'Pinot Gris', 'Sémillion', 'Trebbiano']
    @grape_ports = ['Touriga Franca', 'Tinta Roriz', 'Tinta Barroca', 'Touriga Nacional', 'Tinto Cao']
    @grape_sparklings = ['Chardonnay', 'Pinot Noir', 'Pinot Meunier', 'Macabeo', 'Monastrell', 'Garnacha', 'Muscat Blanc à Petits Grains', 'Glera', 'Riesling']
    @meals = ['Red Meat', 'White Meat', 'Fish', 'Cheese', 'Dessert']
    @americas = ['United States', 'Argentina']
    @europes = ['France', 'Italy', 'Spain', 'Portugal', 'Switzerland', 'Germany']
    @oceanias = ['New-Zealand', 'Australia']
    @user_answer = UserAnswer.new
  end

  def home
    @changenav = true
  end

end
