class ProfilesController < ApplicationController
  attr_reader :user
  before_action :set_profile, only: [:show]

  def index
    @profiles = User.all
    @profiles = policy_scope(User)
  end

  def show
    @friendship = Friendship.new
    @friendships = @profile.friendships_as_receiver.count
    # display a persons events
    @events = @profile.events
    # display a persons moments
    @moments = @profile.moments
  end

  def edit
    authorize current_user
  end

  def update
    authorize current_user
    current_user.update(profile_params)
    redirect_to profile_path(current_user)
  end

  private

  def profile_params
    params.require(:user).permit(:username, :location, :bio, :date_of_birth, :profile_avatar, :profile_avatar_cache, :profile_banner, :profile_banner_cache, :spotify_top_1, :spotify_top_2, :spotify_top_3, :spotify_top_4, :spotify_top_5)
  end

  def set_profile
    @profile = User.find(params[:id])
    authorize @profile
  end
end
