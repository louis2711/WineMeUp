class UserAnswersController < ApplicationController



  def create
    @user_answer = UserAnswer.new(user_answer_params)
    @user_answer.user = current_user
    @user_answer.save
    raise
    redirect_to redirection(@user_answer)
  end

  private

  def user_answer_params
    params.require(:user_answer).permit(:question_name, :question_gender, :question_age, :question_city, :question_personnality, :question_reason, :question_vineyard_management, :question_exploration, :question_colour, :question_grape_red, :question_grape_rose, :question_grape_sweet, :question_grape_white, :question_grape_port, :question_grape_sparkling, :regions_list, :aromas_list, :vintage_range, :meals_list, :america_list, :europe_list, :oceania_list, :worlds_list)
  end

  def redirection(answer)
    if answer.question_reason == 'Impress your friends'
      url = "TO DO"
    elsif answer.worlds_list == 'New world'
      url = 'country%5B%5D=Argentina&country%5B%5D=South+Africa&country%5B%5D=Australia&country%5B%5D=New+Zealand&country%5B%5D=United+States'
    elsif answer.worlds_list == 'Old world'
      url = '/bottles?country%5B%5D=France&country%5B%5D=Italy&country%5B%5D=Spain&country%5B%5D=Portugal&country%5B%5D=Switzerland'
    end
    return url
  end

end

