class RemoveAnswerIdFromQuestions < ActiveRecord::Migration[6.0]
  def change
    remove_column :questions, :answer_id, :integer
  end
end
