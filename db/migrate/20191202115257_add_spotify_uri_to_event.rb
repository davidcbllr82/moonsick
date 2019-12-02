class AddSpotifyUriToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :spotify_uri, :string
  end
end
