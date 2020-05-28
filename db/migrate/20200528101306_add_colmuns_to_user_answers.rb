class AddColmunsToUserAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :user_answers, :question_colour, :string
    add_column :user_answers, :question_grape_red, :string
    add_column :user_answers, :question_grape_rose, :string
    add_column :user_answers, :question_grape_sweet, :string
    add_column :user_answers, :question_grape_white, :string
    add_column :user_answers, :question_grape_port, :string
    add_column :user_answers, :question_grape_sparkling, :string
  end
end
