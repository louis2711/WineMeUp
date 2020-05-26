class AddInfoToBottles < ActiveRecord::Migration[6.0]
  def change
    add_column :bottles, :appellation, :string
    add_column :bottles, :vineyard_name, :string
    add_column :bottles, :vintage, :string
    add_column :bottles, :color, :string
    add_column :bottles, :grape_variety, :string
    add_column :bottles, :aroma, :string
    add_column :bottles, :characteristic, :string
    add_column :bottles, :country, :string
    add_column :bottles, :region, :string
  end
end


