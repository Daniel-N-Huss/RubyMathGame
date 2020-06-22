class Game

  attr_accessor :turn_count

  def initialize
    @player1 = Player.new
    @current_question = nil
    @current_turn = nil
    @turn_count = 0
  end

  def play_the_game
    while @player1.lives > 0
      current_question = Question.new

      self.turn_count += 1
      
      current_turn = Turn.new(turn_count, @player1, @player1)
      
      current_turn.start_turn

      current_question.ask_question
      result = current_question.answer_question

      if !result
        @player1.lives -= 1
      end
    end

    self.game_over

  end
  # ================ Messages ================= #

  def start_game
    puts "    Welcome to MathGame!
    
    I hope you're ready to do some math and compete against your friend :)
      
    Each of you will take turns answering a math problem.
    
    Answer incorrectly, and you lose a life.
    
    Lose 3 lives, and the game is over!"
  end

  def game_over
    puts "Oops, you ran out of lives! Game over!"
  end
end
