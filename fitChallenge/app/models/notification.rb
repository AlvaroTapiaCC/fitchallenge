class Notification < ApplicationRecord
    # Associations
    belongs_to :user

    # Validations
    validates :user_id, :message, presence: true

end
