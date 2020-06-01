class UserProfile < ApplicationRecord
  belongs_to :user

  def self.create_from_answer(answer)
    if answer.question_colour == "Red"
      color = "Red"
    else
      color = "White"
    end
    create!(color: color, user_id: answer.user_id)
  end
end
