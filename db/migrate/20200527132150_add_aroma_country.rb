class AddAromaCountry < ActiveRecord::Migration[6.0]
  def change
    add_column :bottles, :aroma, :string
    add_column :bottles, :country, :string
    add_column :bottles, :label, :string
    remove_column :bottles, :description
  end
end
