class AddPlaylistIdToEvent < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :playlist, foreign_key: true
  end
end
