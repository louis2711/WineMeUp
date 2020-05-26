class UserAnswersController < ApplicationController


  def create
    @user_answer = UserAnswer.new(user_answer_params)
    @user_answer.user = current_user
    @user_answer.save
  end

  private

  def user_answer_params
    params.require(:user_answer).permit(:question_one :question_two :question_three :question_four :question_five :question_six :question_seven :question_eight :question_nine :question_ten)
  end

end
