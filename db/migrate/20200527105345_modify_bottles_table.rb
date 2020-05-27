class ModifyBottlesTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :bottles, :year
    add_column :bottles, :vintage, :integer
    remove_column :bottles, :grapes
    add_column :bottles, :grape_variety, :integer
    add_column :bottles, :characteristics, :string
  end
end
