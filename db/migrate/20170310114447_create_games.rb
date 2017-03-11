class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :guesses, :default => 0
      t.integer :points, :default => 0
      t.integer :user_id, null: false
      t.integer :deck_id, null: false

      t.timestamps null: false
    end
  end
end
