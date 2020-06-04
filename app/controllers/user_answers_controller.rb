class UserAnswersController < ApplicationController

  def create
    @user_answer = UserAnswer.new(user_answer_params)
    @user_answer.user = current_user
    @user_answer.save
    #redirect_to redirection(@user_answer)

    # @user_profile = UserProfile.create_from_answer(@user_answer)
    redirect_to redirection(@user_answer)
  end

  private

  def user_answer_params
    params.require(:user_answer).permit(:question_name, :question_gender, :question_age, :question_city, :question_personnality, :question_reason, :question_vineyard_management, :question_exploration, :question_colour, :question_grape_red, :question_grape_rose, :question_grape_sweet, :question_grape_white, :question_grape_port, :question_grape_sparkling, :regions_list, :aromas_list, :vintage_range, :meals_list, :america_list, :europe_list, :oceania_list, :worlds_list)
  end

  def redirection(answer)
    if answer.question_reason == 'Impress your friends'
      url = "/bottles?price_range=75%2C2000"
    elsif answer.worlds_list == 'New world'
      url = '/bottles?country%5B%5D=Argentina&country%5B%5D=South+Africa&country%5B%5D=Australia&country%5B%5D=New+Zealand&country%5B%5D=United+States'
    elsif answer.worlds_list == 'Old world'
      url = '/bottles?country%5B%5D=France&country%5B%5D=Italy&country%5B%5D=Spain&country%5B%5D=Portugal&country%5B%5D=Switzerland'
    elsif answer.meals_list == 'Red Meat'
      url = '/bottles?characteristics%5B%5D=Structured&characteristics%5B%5D=Powerful&characteristics%5B%5D=High+Tannins'
    elsif answer.meals_list == 'White Meat'
      url = '/bottles?characteristics%5B%5D=Light&characteristics%5B%5D=Low+Tannins&characteristics%5B%5D=Dry'
    elsif answer.meals_list == 'Fish'
      url = '/bottles?characteristics%5B%5D=Structured&characteristics%5B%5D=Light&characteristics%5B%5D=Low+Tannins&characteristics%5B%5D=Dry'
    elsif answer.meals_list == 'Cheese'
      url = '/bottles?characteristics%5B%5D=Structured&characteristics%5B%5D=Light&characteristics%5B%5D=Powerful&characteristics%5B%5D=Low+Tannins&characteristics%5B%5D=Dry&characteristics%5B%5D=High+Tannins'
    elsif answer.meals_list == 'Dessert'
      url = '/bottles?characteristics%5B%5D=Sweet&characteristics%5B%5D=Acid'
    elsif answer.regions_list == 'Africa'
      url == '/bottles?country%5B%5D=South+Africa'
    elsif answer.america_list == 'United States'
      url = '/bottles?country%5B%5D=United+States'
    elsif answer.america_list == 'Argentina'
      url = '/bottles?country%5B%5D=Argentina'
    elsif answer.europe_list == 'France'
      url = '/bottles?country%5B%5D=France'
    elsif answer.europe_list == 'Italy'
      url = '/bottles?country%5B%5D=Italy'
    elsif answer.europe_list == 'Spain'
      url = '/bottles?country%5B%5D=Spain'
    elsif answer.europe_list == 'Portugal'
      url = '/bottles?country%5B%5D=Portugal'
    elsif answer.europe_list == 'Switzerland'
      url = '/bottles?country%5B%5D=Switzerland'
    elsif answer.europe_list == 'Germany'
      url = '/bottles?country%5B%5D=Germany'
    elsif answer.europe_list == 'Greece'
      url = '/bottles?country%5B%5D=Greece'
    elsif answer.oceania_list == 'New Zealand'
      url = '/bottles?country%5B%5D=New+Zealand'
    elsif answer.oceania_list == 'Australia'
      url = '/bottles?country%5B%5D=Australia'
    elsif answer.aromas_list == 'Fruits flavors'
      url = '/bottles?aroma%5B%5D=Fruity'
    elsif answer.aromas_list == 'Floral flavors'
      url = '/bottles?aroma%5B%5D=Floral'
    elsif answer.aromas_list == 'Herbal'
      url = '/bottles?aroma%5B%5D=Herbal'
    elsif answer.aromas_list == 'Woody'
      url = '/bottles?aroma%5B%5D=Woody'
    elsif answer.aromas_list == 'Spicy'
      url = '/bottles?aroma%5B%5D=Spicy'
    elsif answer.aromas_list == 'Mineral'
      url = '/bottles?aroma%5B%5D=Mineral'
    elsif answer.vintage_range
      url = "/bottles?vintage%5B%5D=#{answer.vintage_range}"
    end
    return url
  end

end

