class AddVineyardManagementToUserProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :user_profiles, :vineyard_management, :string
  end
end
