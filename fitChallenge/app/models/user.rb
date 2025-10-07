class User < ApplicationRecord
    # Associations
    has_many :challenges
    has_many :notifications
    has_many :user_badges
    has_many :challenge_participants

    # Validations
    validates :name, :email, presence: true
    validates :email, uniqueness: true

end
