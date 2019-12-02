class FriendshipsController < ApplicationController
  def create
    @friendship = Friendship.new
    authorize @friendship
    @friendship.asker = current_user
    @friendship.receiver = User.find(params[:user_id])
    @friendship.save
  end
end
