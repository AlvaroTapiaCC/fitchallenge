class CreateChallengeParticipants < ActiveRecord::Migration[8.0]
  def change
    create_table :challenge_participants do |t|
      t.integer :user_id
      t.integer :challenge_id

      t.timestamps
    end
  end
end
