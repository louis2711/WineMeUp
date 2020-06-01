class AddWorldsListToUserAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :user_answers, :worlds_list, :string
  end
end
