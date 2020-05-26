class AddNextQuestionToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :next_question, :string
  end
end
