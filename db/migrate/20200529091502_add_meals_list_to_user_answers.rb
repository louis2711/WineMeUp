class AddMealsListToUserAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :user_answers, :meals_list, :string
  end
end
