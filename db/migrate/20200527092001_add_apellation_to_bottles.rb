class AddApellationToBottles < ActiveRecord::Migration[6.0]
  def change
    add_column :bottles, :appellation, :string
  end
end
