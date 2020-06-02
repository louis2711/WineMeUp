class AddSelectedAromaToUserProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :user_profiles, :selected_aroma, :string
  end
end
