# This is the entry point to our math game
# Classes will be imported here:
require './game'

game1 = Game.new

game1.start_game

# Main game logic below


puts "What is 2 + 2?"
answer = gets.chomp.to_i

if answer == 4
  puts "Great job!"
else
  puts "Wrong, ya dummy!"
end