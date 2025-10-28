class CreateNotifications < ActiveRecord::Migration[8.0]
  def change
    create_table :notifications do |t|
      t.integer :user_id
      t.text :message
      t.boolean :read

      t.timestamps
    end
  end
end
