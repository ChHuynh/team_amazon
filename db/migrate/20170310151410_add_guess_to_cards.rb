class AddGuessToCards < ActiveRecord::Migration
  def change
    add_column :cards, :guess, :boolean, :default => false

  end
end
