class ChallengeParticipantsController < ApplicationController
  def index
    @challenge_participants = ChallengeParticipant.all
  end

  def show
    @challenge_participant = ChallengeParticipant.find(params[:id])
  end
end
