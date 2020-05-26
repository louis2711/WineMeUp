class CreateUserAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :user_answers do |t|
      t.string :question_one
      t.string :question_two
      t.string :question_three
      t.string :question_four
      t.string :question_five
      t.string :question_six
      t.string :question_seven
      t.string :question_eight
      t.string :question_nine
      t.string :question_ten

      t.timestamps
    end
  end
end
