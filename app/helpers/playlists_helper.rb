module PlaylistsHelper
  def spotify_embed_player(spotify_playlist_id)
    url = "https://open.spotify.com/embed/playlist/#{spotify_playlist_id}"

    tag.iframe src: url,
               width: 500,
               height: 620,
               frameborder: 0,
               allowtransparency: true,
               allow: "encrypted-media"
  #"<iframe src= width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>"
  end

  def spotify_song(spotify_uid)
    url = "https://open.spotify.com/embed/track/#{spotify_uid}"

    tag.iframe src: url,
               width: 250,
               height: 80,
               frameborder: 0,
               allowtransparency: true,
               allow: "encrypted-media"
  #<iframe src= width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
  end
end
