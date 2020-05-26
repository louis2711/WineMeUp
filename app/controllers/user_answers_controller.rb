class UserAnswersController < ApplicationController


  def create
    @user_answer = UserAnswer.new(user_answer_params)
    @user_answer.user = current_user
    @user_answer.save
  end

  private

  def user_answer_params
    params.require(:user_answer).permit(:question_name, :question_gender, :question_age, :question_city, :question_personnality, :question_reason, :question_vineyard_management, :question_mind, :question_nine, :question_ten)
  end

end

