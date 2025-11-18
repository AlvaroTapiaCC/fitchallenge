# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role_admin?
      can :manage, :all
      return
    end

    # Public readable resources
    can :read, [Challenge, Badge]

    if user.persisted?
      # Challenges: users can create, and manage only the ones they created
      can :create, Challenge
      can [:update, :destroy], Challenge, creator_id: user.id

      # Read-only access to own records
      can :read, ProgressEntry, participant: { user_id: user.id }
      can :read, UserBadge, user_id: user.id
      can :read, Notification, user_id: user.id
    end
  end
end
