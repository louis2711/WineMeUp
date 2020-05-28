class ChangeGrapeVarietyToString < ActiveRecord::Migration[6.0]
  def change
    change_column :bottles, :grape_variety, :string
  end
end
