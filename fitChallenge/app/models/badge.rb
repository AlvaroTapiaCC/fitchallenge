class Badge < ApplicationRecord
    # Associations
    has_many :user_badges

    # Validations
    validates :name, :description, :icon_url, presence: true

end
