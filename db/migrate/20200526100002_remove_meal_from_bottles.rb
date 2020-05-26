class RemoveMealFromBottles < ActiveRecord::Migration[6.0]
  def change
    remove_column :bottles, :meal
    rename_column :bottles, :typical, :typical_meal
  end
end
