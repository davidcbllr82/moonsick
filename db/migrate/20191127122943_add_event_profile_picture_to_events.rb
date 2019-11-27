class AddEventProfilePictureToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :event_profile_picture, :string
  end
end
