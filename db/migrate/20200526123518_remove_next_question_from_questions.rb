class RemoveNextQuestionFromQuestions < ActiveRecord::Migration[6.0]
  def change
    remove_column :questions, :next_question, :string
  end
end
