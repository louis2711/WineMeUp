class AddColumnsToUserAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :user_answers, :america_list, :string
    add_column :user_answers, :europe_list, :string
    add_column :user_answers, :oceania_list, :string
  end
end
