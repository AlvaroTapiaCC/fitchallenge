class CreateProgressEntries < ActiveRecord::Migration[8.0]
  def change
    create_table :progress_entries do |t|
      t.integer :participant_id
      t.date :progress_date
      t.text :description
      t.integer :points_earned

      t.timestamps
    end
  end
end
