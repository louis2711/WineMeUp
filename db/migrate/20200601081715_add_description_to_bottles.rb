class AddDescriptionToBottles < ActiveRecord::Migration[6.0]
  def change
    add_column :bottles, :description, :text
  end
end
