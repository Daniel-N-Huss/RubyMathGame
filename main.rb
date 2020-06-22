# This is the entry point to our math game
# Classes will be imported here:
require './game'
require './question'
require './player'
require './turn'


# Main game logic below


game1 = Game.new

game1.start_game

game1.play_the_game




# player1 = Player.new
# player2 = Player.new

# turn1 = Turn.new(1, player1, player2)

# turn1.start_turn
# puts turn1.inspect