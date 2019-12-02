class PlaylistsController < ApplicationController

  def show
    @playlist = Playlist.find(params[:event_id])
    authorize @playlist
  end

  def create
    @playlist = Playlist.new(playlist_params)
    authorize @playlist
    @playlist.user = current_user
    @playlist.save
  end

  private

  def playlist_params
    params.require(:playlist).permit(:title, :url)
  end
end
