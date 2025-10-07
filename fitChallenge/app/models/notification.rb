class Notification < ApplicationRecord
    # Associations
    belongs_to :user

    # Validations
    validates :user_id, :message, presence: true

    def read_status
        if self.read
            "Read"
        else
            "Unread"
        end
    end
end
