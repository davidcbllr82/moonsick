class ProfilesController < ApplicationController
  attr_reader :user
  before_action :set_profile, only: [:show]

  def index
    @profiles = User.all
    @profiles = policy_scope(User)
  end

  def show
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
    params.require(:user).permit(:username, :location, :bio, :date_of_birth, :profile_avatar, :profile_banner)
  end

  def set_profile
    @profile = User.find(params[:id])
    authorize @profile
  end
end
