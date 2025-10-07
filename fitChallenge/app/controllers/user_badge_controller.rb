class UserBadgeController < ApplicationController
  def index
    @user_badges = UserBadge.all
  end

  def show
    @user_badge = UserBadge.find(params[:id])
  end
end
