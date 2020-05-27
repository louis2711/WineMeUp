class FixColumnNameVineyard < ActiveRecord::Migration[6.0]
  def change
    rename_column :user_answers, :question_vineyard_management, :question_explration
  end
end
