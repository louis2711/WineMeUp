class AddRegionToUserProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :user_profiles, :region, :string
  end
end
