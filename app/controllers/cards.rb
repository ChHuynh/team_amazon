get '/decks/:deck_id/cards' do
  @deck = Deck.find(params[:deck_id])
  @cards = @deck.cards
  if @cards == @cards.unguessed_cards
    @game = Game.create(user_id: session[:user_id], deck_id: params[:deck_id])
  else
    @game = Game.last
  end

  if !@cards.unguessed_cards.empty?
    @cards = @cards.unguessed_cards
    @card = @cards.shuffle.first
    redirect :"/decks/#{@deck.id}/cards/#{@card.id}"
  elsif !@cards.incorrectly_answered_cards.empty?
    @cards = @cards.incorrectly_answered_cards
    @card = @cards.shuffle.first
    redirect :"/decks/#{@deck.id}/cards/#{@card.id}"
  else
    erb :"games/show"
  end
end

get '/decks/:deck_id/cards/:card_id' do
  @card = Card.find(params[:card_id])
  @cards = Deck.find(params[:deck_id]).cards
  erb :'cards/show'
end

post '/decks/:deck_id/cards/:card_id' do
  @game = Game.last
  @card = Card.find(params[:card_id])
  if @card.answer == params[:user][:answer]
    @card.update_attributes(correctly_answered: true)
    @game.add_points if @card.guess == false
  end
  @card.update_attributes(guess: true)
  @game.increase_guess

  redirect "/decks/#{params[:deck_id]}/cards"
end
