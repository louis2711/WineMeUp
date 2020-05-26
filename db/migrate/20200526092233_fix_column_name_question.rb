class FixColumnNameQuestion < ActiveRecord::Migration[6.0]
  def change
    rename_column :questions, :question, :content
  end
end
