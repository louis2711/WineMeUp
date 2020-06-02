class AddSelectedGrapeToUserProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :user_profiles, :selected_grape, :string
  end
end
