class AddAromasListToUserAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :user_answers, :aromas_list, :string
  end
end
