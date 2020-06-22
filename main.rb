# This is the entry point to our math game
# Classes will be imported here:
require './game'
require './question'
require './player'


# Main game logic below


game1 = Game.new
player1 = Player.new


game1.start_game

game1.play_the_game



# q1 = Question.new

# q1.ask_question
# q1.answer_question