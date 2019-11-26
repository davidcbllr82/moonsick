class AddEventAvatarToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :event_avatar, :string
  end
end
