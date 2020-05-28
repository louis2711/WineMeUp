class AddVintageRangeToUserAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :user_answers, :vintage_range, :integer
  end
end
