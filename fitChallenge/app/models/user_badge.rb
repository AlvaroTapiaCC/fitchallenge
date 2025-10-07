class UserBadge < ApplicationRecord
    # Associations
    belongs_to :user
    belongs_to :badge

    # Validations
    validates :user_id, :badge_id, presence: true

end
