class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @profile.update(profile_params)
    redirect_to profile_path(User.find(params[:id]))
  end


  private

  def profile_params
    params.require(:profile).premit(:username, :profile_avatar)
  end

  def set_profile
    @profile = User.find(params[:id])
  end
end
