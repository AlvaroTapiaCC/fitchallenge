class User < ApplicationRecord
    # Associations
    has_many :challenges
    has_many :notifications
    has_many :user_badges
    has_many :challenge_participants

    # Validations
    validates :username, :first_name, :last_name, :email, presence: true
    validates :username, :email, uniqueness: true

    def full_name
        "#{first_name} #{last_name}"
    end
end
