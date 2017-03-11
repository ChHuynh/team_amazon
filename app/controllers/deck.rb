get '/decks' do
  @decks = Deck.all
  @decks.each do |deck|
  deck.cards.each do |card|
    card.update_attributes(guess: false, correctly_answered: false)
  end
  end
  erb :'decks/index'
end
