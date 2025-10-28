class ChallengeParticipantsController < ApplicationController
  before_action :set_challenge_participant, only: %i[ show edit update destroy ]

  # GET /challenge_participants or /challenge_participants.json
  def index
    @challenge_participants = ChallengeParticipant.all
  end

  # GET /challenge_participants/1 or /challenge_participants/1.json
  def show
  end

  # GET /challenge_participants/new
  def new
    @challenge_participant = ChallengeParticipant.new
  end

  # GET /challenge_participants/1/edit
  def edit
  end

  def create
    @challenge_participant = ChallengeParticipant.new(challenge_participant_params)

    if @challenge_participant.save
      redirect_to @challenge_participant, notice: "Challenge participant was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /challenge_participants/1 or /challenge_participants/1.json
  def update
    if @challenge_participant.update(challenge_participant_params)
      redirect_to @challenge_participant, notice: "Challenge participant was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /challenge_participants/1 or /challenge_participants/1.json
  def destroy
    @challenge_participant.destroy!
    redirect_to challenge_participants_path, notice: "Challenge participant was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challenge_participant
      @challenge_participant = ChallengeParticipant.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def challenge_participant_params
      params.fetch(:challenge_participant, {})
    end
end
