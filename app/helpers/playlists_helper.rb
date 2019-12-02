module PlaylistsHelper
  def spotify_embed_player(spotify_playlist_id)
    url = "https://open.spotify.com/embed/playlist/#{spotify_playlist_id}"

    tag.iframe src: url, width: 300, height: 380, frameborder: 0, allowtransparency: true, allow: "encrypted-media"
    # "<iframe src= width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>"
  end
end
