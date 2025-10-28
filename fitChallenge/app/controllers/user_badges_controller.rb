class UserBadgesController < ApplicationController
  before_action :set_user_badge, only: %i[ show edit update destroy ]

  # GET /user_badges or /user_badges.json
  def index
    @user_badges = UserBadge.all
  end

  # GET /user_badges/1 or /user_badges/1.json
  def show
  end

  # GET /user_badges/new
  def new
    @user_badge = UserBadge.new
  end

  # GET /user_badges/1/edit
  def edit
  end

  def create
    @user_badge = UserBadge.new(user_badge_params)

    if @user_badge.save
      redirect_to @user_badge, notice: "User badge was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_badges/1 or /user_badges/1.json
  def update
    if @user_badge.update(user_badge_params)
      redirect_to @user_badge, notice: "User badge was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /user_badges/1 or /user_badges/1.json
  def destroy
    @user_badge.destroy!
    redirect_to user_badges_path, notice: "User badge was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_badge
      @user_badge = UserBadge.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def user_badge_params
      params.fetch(:user_badge, {})
    end
end
