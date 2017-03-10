class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :guesses, null: false
      t.string :points, null: false
      t.integer :user_id, null: false
      t.integer :deck_id, null: false

      t.timestamps null: false
    end
  end
end
