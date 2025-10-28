class ProgressEntry < ApplicationRecord
    # Associations
    belongs_to :participant, class_name: "ChallengeParticipant"

    # Validations
    validates :participant_id, :points_earned, presence: true
    validates :points_earned, numericality: true

end
