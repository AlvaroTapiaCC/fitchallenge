class CreateChallenges < ActiveRecord::Migration[8.0]
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :description
      t.integer :points
      t.date :start_date
      t.date :end_date
      t.integer :creator_id

      t.timestamps
    end
  end
end
