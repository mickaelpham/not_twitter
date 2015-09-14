class FollowersController < ApplicationController
  before_action :authorize

  # POST /follow/1
  def create
    current_user.active_relationships.create(following_id: params[:user_id])
    redirect_to user_url(params[:user_id])
  end

  # DELETE /unfollow/1
  def destroy
    current_user.active_relationships.where(following_id: params[:user_id]).destroy_all
    redirect_to user_url(params[:user_id])
  end
end
