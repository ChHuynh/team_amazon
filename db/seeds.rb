Deck.delete_all
Card.delete_all

Deck.create(name: "Colors") # id 1
Deck.create(name: "OG pokemon") # id 2
# Deck.create(name: "May Mays") # id 3
# Deck.create(name: "Films") # id 4

Card.create(question: "What is the color of a banana?", answer: "yellow", deck_id: 1)
Card.create(question: "What is the color of the tires on a red car?", answer: "black", deck_id: 1)
Card.create(question: "What is the color of an orange?", answer: "orange", deck_id: 1)
Card.create(question: "What is Jesse's favorite color?", answer: "purple", deck_id: 1)
Card.create(question: "What is the color of fruit punch Gatorade", answer: "red", deck_id: 1)

Card.create(question: "What is the grass starter?", answer: "bulbasaur", deck_id: 2)
Card.create(question: "What is the strongest group of trainers in the game?", answer: "elite four", deck_id: 2)
Card.create(question: "What is the 4th gym leader's type?", answer: "grass", deck_id: 2)
Card.create(question: "Who does Pikachu evolve into?", answer: "raichu", deck_id: 2)
Card.create(question: "What type of pokemon is Kangaskhan?", answer: "normal", deck_id: 2)
