class FixSeveralColumnNames < ActiveRecord::Migration[6.0]
  def change
    rename_column :user_answers, :question_one, :question_name
    rename_column :user_answers, :question_two, :question_gender
    rename_column :user_answers, :question_three, :question_age
    rename_column :user_answers, :question_four, :question_city
    rename_column :user_answers, :question_five, :question_personnality
    rename_column :user_answers, :question_six, :question_reason
    rename_column :user_answers, :question_seven, :question_vineyard_management
    rename_column :user_answers, :question_eight, :question_mind
  end
end

