class AddBottleToFeedbacks < ActiveRecord::Migration[6.0]
  def change
    add_column :feedbacks, :content, :text
    add_reference :feedbacks, :bottle, null: false, foreign_key: true
  end
end
