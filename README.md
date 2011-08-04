A collection of libraries that represent various things within a deck of cards
Installation: gem install deck or place deck in your gemfile

To create a 5 card draw game for 10 players:

game = Game.new(10, 5)
game.deal

game.hands --> gives an array of hands

game.hands[0].cards --> gives an array of cards

game.hands[0].cards[0] --> will give a random hand

