class AddColorToUserProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :user_profiles, :color, :string
  end
end
