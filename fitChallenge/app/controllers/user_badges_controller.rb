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

  # POST /user_badges or /user_badges.json
  def create
    @user_badge = UserBadge.new(user_badge_params)

    respond_to do |format|
      if @user_badge.save
        format.html { redirect_to @user_badge, notice: "User badge was successfully created." }
        format.json { render :show, status: :created, location: @user_badge }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_badge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_badges/1 or /user_badges/1.json
  def update
    respond_to do |format|
      if @user_badge.update(user_badge_params)
        format.html { redirect_to @user_badge, notice: "User badge was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @user_badge }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_badge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_badges/1 or /user_badges/1.json
  def destroy
    @user_badge.destroy!

    respond_to do |format|
      format.html { redirect_to user_badges_path, notice: "User badge was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
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
