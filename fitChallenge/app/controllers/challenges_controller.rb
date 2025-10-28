class ChallengesController < ApplicationController
  before_action :set_challenge, only: %i[ show edit update destroy ]

  # GET /challenges or /challenges.json
  def index
    @challenges = Challenge.all
  end

  # GET /challenges/1 or /challenges/1.json
  def show
  end

  # GET /challenges/new
  def new
    @challenge = Challenge.new
  end

  # GET /challenges/1/edit
  def edit
  end

  def create
    @challenge = Challenge.new(challenge_params)

    if @challenge.save
      redirect_to @challenge, notice: "Challenge was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /challenges/1 or /challenges/1.json
  def update
    if @challenge.update(challenge_params)
      redirect_to @challenge, notice: "Challenge was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /challenges/1 or /challenges/1.json
  def destroy
    @challenge.destroy!
    redirect_to challenges_path, notice: "Challenge was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challenge
      @challenge = Challenge.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def challenge_params
      params.fetch(:challenge, {})
    end
end
