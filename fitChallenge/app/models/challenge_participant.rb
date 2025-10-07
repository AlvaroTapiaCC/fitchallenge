class ChallengeParticipant < ApplicationRecord
    # Associations
    belongs_to :challenge
    belongs_to :user
    has_many :progress_entries

    # Validations
    validates :user_id, :challenge_id, presence: true
    validates :user_id, uniqueness: true
    validates :challenge_id, uniqueness: true

end
