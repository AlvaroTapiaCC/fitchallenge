class ChallengeParticipant < ApplicationRecord
    # Associations
    belongs_to :challenge
    belongs_to :user
    has_many :progress_entries

    # Validations
    validates :user_id, :challenge_id, presence: true
    validates :user_id, uniqueness: { scope: :challenge_id, message: "already joined this challenge" }

end
