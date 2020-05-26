class CreateBottles < ActiveRecord::Migration[6.0]
  def change
    create_table :bottles do |t|
      t.integer :year
      t.string :region
      t.string :domain
      t.integer :price_range
      t.string :grapes
      t.string :color
      t.string :description
      t.string :typical
      t.string :meal

      t.timestamps
    end
  end
end
