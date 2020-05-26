class DropQuestionsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :answers
    drop_table :questions
  end
end
