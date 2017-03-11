class AddAnsweredToCards < ActiveRecord::Migration
  def change
    add_column :cards, :correctly_answered, :boolean, :default => false
  end
end
