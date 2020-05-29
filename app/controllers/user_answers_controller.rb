class UserAnswersController < ApplicationController



  def create
    @user_answer = UserAnswer.new(user_answer_params)
    @user_answer.user = current_user
    @user_answer.save
    redirect_to redirection(@user_answer)
  end

  private

  def user_answer_params
    params.require(:user_answer).permit(:question_name, :question_gender, :question_age, :question_city, :question_personnality, :question_reason, :question_vineyard_management, :question_exploration, :question_colour, :question_grape_red, :question_grape_rose, :question_grape_sweet, :question_grape_white, :question_grape_port, :question_grape_sparkling, :regions_list, :aromas_list, :vintage_range, :meals_list)
  end

  def redirection(answer)
    # i = answer.length
    # iterated_array = answer[]
    url_array = []
    answer.each do |key, value|
      new_value = value.gsub(" ", "+")
      filtered_url = "#{key} = #{value}"
      url_array << filtered_url
    end
    return "winemeup.wine/bottles?#{url_array.join('&')}"
  end

end

