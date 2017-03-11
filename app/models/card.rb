class Card < ActiveRecord::Base
  belongs_to :deck
  scope :unguessed_cards, -> {where(guess: false)}
  scope :incorrectly_answered_cards, -> {where(correctly_answered: false)}
end
