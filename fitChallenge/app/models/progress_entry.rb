class ProgressEntry < ApplicationRecord
    # Associations
    belongs_to :challenge_participant

    # Validations
    validates :challenge_participant_id, :points_earned, presence: true
    validates :points_earned, numericality: true

end
