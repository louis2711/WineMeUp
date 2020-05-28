class AddRegionsListToUserAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :user_answers, :regions_list, :string
  end
end
