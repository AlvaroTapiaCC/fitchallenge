class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
    
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

    # Roles (string-backed enum to match current schema)
    # Generates helpers like role_admin?, role_regular?, role_admin!, role_regular!
    enum :role, { 
        regular: 0,
        admin: 1 
        }, prefix: true
end
