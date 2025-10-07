class Challenge < ApplicationRecord
    # Associations
    belongs_to :creator, class_name: "User"
    has_many :challenge_participants

    # Validations
    validates :title, :description, :points, :start, :end, :creator_id, presence: true
    validates :points, numericality: { greater_than_or_equal_to: 0 } 

end
