class RenameColumnAndAddColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :user_answers, :question_explration, :question_vineyard_management
    add_column :user_answers, :question_exploration, :string
  end
end
